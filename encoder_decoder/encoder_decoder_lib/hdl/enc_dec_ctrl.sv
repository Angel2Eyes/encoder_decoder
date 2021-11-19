//
// Verilog Module encoder_decoder_lib.enc_dec_ctrl
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 16:00:43 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module enc_dec_ctrl
	#( 	parameter AMBA_ADDR_WIDTH = 32,
		parameter AMBA_WORD = 32,
		parameter DATA_WIDTH = 32)
	(


	input									clk,
	input 									rst,
		
	////////////////////////////	
	//Interface with APB master	
	////////////////////////////	
		
	input	logic [AMBA_ADDR_WIDTH-1:0]		paddr,
	input	logic [AMBA_WORD-1:0]			pwdata,
	input	logic							penable,
	input	logic							psel,
	input	logic							pwrite,
	
	output	logic [AMBA_WORD-1:0]			prdata,
	//output	logic [DATA_WIDTH-1:0]			data_out,
	
	/////////////////////////////
	
	output	logic							enc_ena,
	output	logic							dec_ena,
	output	logic							dec_in_sel,
	output	logic							data_out_sel,
	output	logic							operation_done,	//TODO
	output	logic							num_of_errors	//TODO
	
	);
	

	logic [DATA_WIDTH-1:0]		ctrl_reg;
	logic [DATA_WIDTH-1:0]		data_in;
	logic [DATA_WIDTH-1:0]		codeword_width;
	logic [DATA_WIDTH-1:0]		noise;
	
	logic [1:0]					ctrl;			
	
	enc_dec_rgf #(.AMBA_ADDR_WIDTH(AMBA_ADDR_WIDTH), .AMBA_WORD(AMBA_WORD), .DATA_WIDTH(DATA_WIDTH))
		u_enc_dec_rgf(
		//inputs
		.clk(clk),
		.rstn(~rst),
		//apb bus
		.paddr(paddr),
		.pwdata(pwdata),
		.penable(penable),
		.psel(psel),
		.pwrite(pwrite),
	
		//outputs
		.ctrl(ctrl_reg),
		.data_in(data_in),
		.codeword_width(codeword_width),
		.noise(noise),
		//apb bus
		.prdata(prdata)
		);

	
	always_comb ctrl = ctrl_reg[1:0] + 2'b01;
		
	always_comb enc_ena = ctrl[0];
	always_comb dec_ena = ctrl[1];
	always_comb dec_in_sel = &ctrl;  		// 0 : data_in, 1 : enc_data_out
	always_comb data_out_sel = ctrl[1]; 	// 0 : enc_data_out, 1 : dec_data_out


endmodule