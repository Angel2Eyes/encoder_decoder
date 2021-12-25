//
// Verilog Module encoder_decoder_lib.verification_checker
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W527)
//          at - 15:00:13 12/19/2021
//
// using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module verification_checker #(
  parameter DATA_WIDTH= 32,
  parameter AMBA_ADDR_WIDTH = 32,
  parameter AMBA_WORD = 32)(
  Interface.verification_checker checker_bus
) ;

`define NULL 0
// Data Types
integer data_file;
integer scan_file;
integer data_file_1;
integer data_error = 0;
integer num_error = 0;

integer index;
integer res_idx [30];


string  str = "D:/Users/yuvalsaa/Documents/verification/encoder_decoder/goldenOutput.txt"; //index num_of_errors output
string  str1 = "D:/Users/yuvalsaa/Documents/verification/encoder_decoder/run_log.txt";

reg [1:0] res_num_err [30];
reg [AMBA_WORD-1:0] res_output [30];

//reg [AMBA_WORD-1:0] data_out;
//reg [1:0] num_of_err;

initial
begin : init_proc
	#30 
    //------------------------------------------------------------------------------------------
    //// The Golden Model Result Image Pixels file
    data_file = $fopen(str, "r"); // opening file in reading format
    if (data_file == `NULL) begin // checking if we mangaed to open it
      $display("data_file handle was NULL");
      $finish;
    end
	
	index = 0;
    while (!$feof(data_file)) begin
      scan_file = $fscanf(data_file, "%f %f %f\n", res_idx[index], res_num_err[index], res_output[index]); //index, num_of_errors, output
	  index = index + 1;
    end
   
    // Our Architectural Model Result Image Pixels file (For Saving)
    data_file_1 = $fopen(str1, "w"); // opening file in writing format
    if (data_file_1 == `NULL) begin
      $display("data_file_1 handle was NULL");
      $finish;
    end
    //------------------------------------------------------------------------------------------
    // Initilization
    data_error = 0;
	num_error = 0;
    index = 0;

end

always @(posedge checker_bus.operation_done)
begin : res_proc

  if(checker_bus.ctrl == 0 || res_num_err[index] < 'h2) begin 
	  if(checker_bus.data_out != res_output[index]) begin
		$fwrite(data_file_1, "Error occured in itteration %d : data_out doesn't match expected.		DUT data_out = %b,	expected data_out = %b\n", index, checker_bus.data_out , res_output[index]);
		data_error = data_error + 1;
	  end
  end
  
  if(checker_bus.ctrl != 0 && checker_bus.num_of_errors != res_num_err[index]) begin
	$fwrite(data_file_1, "Error occured in itteration %d : num_of_errors doesn't match expected.		DUT num_of_errors = %b,	expected num_of_errors = %b\n", index, checker_bus.num_of_errors , res_num_err[index]);
	num_error = num_error + 1;
  end
  
  index = index + 1;
  
  if (index == 30) begin
	if(data_error + num_error > 0) begin
		$fwrite(data_file_1, "Simulation FAILS with %d errors:	%d data_out mismatches,	%d num_of_errors mismatches.\n", data_error+num_error, data_error, num_error);
	end
	else begin
		$fwrite(data_file_1, "Simulation PASS\n");
	end
  end
end  

property rst_active;
				@(checker_bus.rst) checker_bus.rst == 0 |=> checker_bus.data_out == 'h0;
				endproperty 
				
assert property (rst_active) 
  else $error("Error data_out doesn't reset when reset is active");
  cover property (rst_active);
			
property operation_done;
				@(posedge checker_bus.clk) checker_bus.start == 1 |-> ##[1:2] checker_bus.operation_done == 1;
				endproperty 
						
assert property (operation_done) else $error("operatin_done fail");
  cover property (operation_done);
endmodule
