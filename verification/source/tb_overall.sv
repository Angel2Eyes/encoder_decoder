//
// Verilog Module my_example_lib.tb_overall
//
// Created:
//          by - user.UNKNOWN (DESKTOP-A337LJE)
//          at - 18:08:43 11/ 3/2020
//
// using Mentor Graphics HDL Designer(TM) 2018.2 (Build 19)
//

`resetall
`timescale 1ns/10ps
module tb_overall #(
  parameter DATA_WIDTH= 32,
  parameter AMBA_ADDR_WIDTH = 32,
  parameter AMBA_WORD = 32);

Interface tb();

Stimulus gen(
    .stim_bus(tb)
    );

ECC_ENC_DEC #(
	.AMBA_ADDR_WIDTH(DATA_WIDTH),
	.AMBA_WORD(AMBA_ADDR_WIDTH),
	.DATA_WIDTH(AMBA_WORD)) dut (
    //.dut_bus(tb)
    .clk(tb.clk),
    .rst(tb.rst),
    .paddr(tb.paddr),
	.pwdata(tb.pwdata),
	.penable(tb.penable),
	.psel(tb.psel),
	.pwrite(tb.pwrite),
	.prdata(tb.prdata),
    .data_out(tb.data_out),
    .operation_done (tb.operation_done),
    .num_of_errors(tb.num_of_errors)
    );

Coverage cov(
    .coverage_bus(tb)
    );

verification_checker check(
    .checker_bus(tb)
    );



endmodule
