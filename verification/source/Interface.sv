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


//signal decleration
logic clk;
logic rst;
logic start;
logic operation_done;
logic [1:0] ctrl;
//logic [DATA_WIDTH - 1:0] data_in;
logic [1:0] codeword_width;
logic [DATA_WIDTH - 1:0] noise;
logic [DATA_WIDTH - 1:0] data_out;
logic [1:0] num_of_errors;

//APB bus signals
logic penable;
logic psel;
logic pwrite;
logic [AMBA_ADDR_WIDTH - 1:0] paddr;
logic [AMBA_WORD - 1:0] pwdata;
logic [AMBA_WORD - 1:0] prdata;

//add counter for num of error (in noise not output of dut)

modport stimulus(output clk, rst, ctrl, codeword_width, noise, start, paddr, pwdata, penable, psel, pwrite); //will output clk, reset, err_num and apb bus signals //ctrl, data_in, codeword_width, noise
modport ecc_enc_dec (input clk,rst,paddr,pwdata,penable,psel,pwrite, output prdata,data_out,operation_done,num_of_errors);
modport verification_checker ( input clk, rst, ctrl, start,operation_done, data_out, num_of_errors);
modport checker_coverager ( input clk, rst, ctrl, codeword_width, noise, num_of_errors);

endinterface
