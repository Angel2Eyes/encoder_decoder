//
// Verilog Module my_example_lib.Stimulus
//
// Created:
//          by - user.UNKNOWN (DESKTOP-A337LJE)
//          at - 03:05:07 10/25/2020
//
// using Mentor Graphics HDL Designer(TM) 2018.2 (Build 19)
//
class random_data #(
  DATA_WIDTH= 32,
  AMBA_WORD = 32);
	rand bit [1:0] num_of_err;
	rand bit [4:0] idx1;
	rand bit [4:0] idx2;
	rand bit [AMBA_WORD-1:0] data_in;
	rand bit [AMBA_WORD-1:0] codeword_width;
	
	constraint constr { num_of_err < 3; 
						idx1 < 2 ** (codeword_width + 3);
						idx2 < 2 ** (codeword_width + 3); 
						idx1 != idx2;
						codeword_width < 'h3;}
endclass

`resetall
`timescale 1ns/10ps
module Stimulus #(
  parameter DATA_WIDTH= 32,
  parameter AMBA_ADDR_WIDTH = 32,
  parameter AMBA_WORD = 32)
( 
   // Port Declarations
   Interface.stimulus stim_bus
);

`define NULL 0

parameter CTRL  		 = 'h0;
parameter DATA_IN        = 'h4;
parameter CODEWORD_WIDTH = 'h8;
parameter NOISE          = 'hC;

// Data Types
integer data_file;

integer scan_file;

integer i,j;
integer num_of_err;
integer index;

string  str = "D:/Users/katrinn/Desktop/GoldenModel/input.txt";

reg [AMBA_WORD-1:0] data_in;
reg [AMBA_WORD-1:0] noise;
reg [AMBA_WORD-1:0] ctrl;
reg [AMBA_WORD-1:0] codeword_width;
reg [1:0] num_of_err_reg;

random_data #(.DATA_WIDTH(DATA_WIDTH),.AMBA_WORD(AMBA_WORD)) rand_d;


always begin : clock_generator_proc
  #10 stim_bus.clk = ~stim_bus.clk;
end

task write_apb (input logic [AMBA_ADDR_WIDTH - 1:0] addr, input logic [AMBA_WORD - 1:0] data);
	begin
		stim_bus.paddr = addr;
		stim_bus.pwdata = data;
		stim_bus.pwrite = 1'b1;
		stim_bus.psel = 1'b1;
		
		@(posedge stim_bus.clk)
		stim_bus.penable = 1'b1;
		
		@(posedge stim_bus.clk)
		stim_bus.psel = 1'b0;
		stim_bus.penable = 1'b0;
	end
endtask

function void creat_input_file();
	
	data_file = $fopen(str, "w"); // opening file in writing format

	index = 0;
	
	rand_d = new();

	for(j=0;j<20;j++) begin // 10 transactions

		for(i=0;i<3;i++) begin	
			noise = 'h0;
			
			rand_d.randomize();
			
			if( i == 2 && rand_d.num_of_err > 0) begin
				noise[rand_d.idx1] = 1'b1;
				
				if(rand_d.num_of_err > 1) begin
				noise[rand_d.idx2] = 1'b1;
				end
				
				num_of_err = rand_d.num_of_err;
			end
			else begin
				num_of_err = 0;
			end
			
			ctrl = i[AMBA_WORD-1:0];
			 
			//write to file
			$fdisplay(data_file,"%d %d %d %d %d %d",index,ctrl,rand_d.codeword_width,rand_d.data_in,noise,num_of_err);
				 
			index = index + 1;
			  
		end
	end
	$fclose(data_file);
endfunction  
  
initial 
begin : stim_proc
  
  // Initilization
  stim_bus.clk = 1; // start with clock and reset at '1', while enable at '0'
  
  stim_bus.rst = 0; // reset active low
  
  stim_bus.psel = 1'b0;
  stim_bus.penable = 1'b0;
  
  creat_input_file();
  
  $display("Please run matlab program now");
  $stop;
  
  @(posedge stim_bus.clk); // wait til next rising edge (in other words, wait 20ns)
  
  stim_bus.rst = 1;
  
  data_file = $fopen(str, "r");
  
  if (data_file == `NULL) begin // checking if we mangaed to open it
    $display("data_file handle was NULL");
    $finish;
  end
  
  @(posedge stim_bus.clk); // wait til next rising edge (in other words, wait 20ns)
    
  //// Reading First Line of each file
  while (!$feof(data_file)) begin
  
	stim_bus.start = 0;
	
    scan_file = $fscanf(data_file, "%0d %0d %0d %0d %0d %0d",index,ctrl,codeword_width,data_in,noise,num_of_err);
    
    write_apb(DATA_IN, data_in);
   	write_apb(NOISE,noise);
   	write_apb(CODEWORD_WIDTH,codeword_width);
	write_apb(CTRL,ctrl);
	
	stim_bus.start = 1;	
	stim_bus.ctrl = ctrl[1:0];
	stim_bus.codeword_width = codeword_width[1:0];
	stim_bus.noise = noise[DATA_WIDTH-1:0];
    
	@(posedge stim_bus.clk);
	stim_bus.start = 0;	
    #20;
  end
  $fclose(data_file);
  $stop;
end

endmodule


