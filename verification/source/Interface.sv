//
// Verilog Module encoder_decoder_lib.Interface
//
// Created:
//          by - katrinn.UNKNOWN (L330W526)
//          at - 16:54:24 12/19/2021
//
// using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
interface Interface #(
  parameter DATA_WIDTH = 32,
  parameter AMBA_WORD = 32,
  parameter AMBA_ADDR_WIDTH = 32) ();

`define CTRL            AMBA_ADDR_WIDTH'h0
`define DATA_IN         AMBA_ADDR_WIDTH'h4
`define CODEWORD_WIDTH  AMBA_ADDR_WIDTH'h8
`define NIOSE           AMBA_ADDR_WIDTH'hC

//signal decleration
logic clk;
logic rst;
logic [1:0] ctrl;
logic [DATA_WIDTH - 1:0] data_in;
logic [1:0] codeword_width;
logic [AMBA_WORD - 1:0] noise;
logic [DATA_WIDTH - 1:0] data_out;
logic [1:0] err_num;
logic [1:0] num_of_errors;

//APB bus signals
logic penable;
logic psel;
logic pwrite;
logic [AMBA_ADDR_WIDTH - 1:0] paddr;
logic [AMBA_WORD - 1:0] pwdata;
logic [AMBA_WORD - 1:0] prdata;

//add counter for num of error (in noise not output of dut)
//Add BFM of APB bus
task apb_write (input logic [AMBA_ADDR_WIDTH - 1:0] addr, input logic [AMBA_WORD - 1:0] data);
   paddr = addr;
   pwdata = data;
  	pwrite = 1'b1;
  	psel = 1'b1;
  	
  	@(posedge clk)
  	penable = 1'b1;
  	
  	@(posedge clk)
  	psel = 1'b0;
  	penable = 1'b0;
endtask

//modport stimulus(); - will import task and output ctrl, data_in, codewidth and apb bus signals
modport ecc_enc_dec (input clk,rst,paddr,pwdata,penable,psel,pwrite, output prdata,data_out,operation_done,num_of_errors);
modport checker_coverager ( input clk, rst, ctrl, data_in, codeword_width, noise, err_num);

endinterface
