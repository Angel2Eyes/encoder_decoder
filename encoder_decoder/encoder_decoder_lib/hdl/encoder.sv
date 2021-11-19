//
// Verilog Module encoder_decoder_lib.encoder
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 16:00:43 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module encoder
	#( 	parameter AMBA_WORD = 32,
		parameter DATA_WIDTH = 32)
	(ena,codeword_width, data_in, data_out);

	input						ena;
	input [1:0] 				codeword_width;
	input [AMBA_WORD - 1 : 0] 	data_in;
	
	output reg[DATA_WIDTH - 1 : 0] data_out;
	
	wire[3:0]	parity8;
	wire[4:0]	parity16;
	wire[5:0]	parity32;
	
	logic[1:0]	u_ena;
	
	enc_parity_32 P32 (.en(u_ena[1]),.data_in(data_in[25:11]), .parity_16(parity16), .parity_32(parity32));
	enc_parity_16 P16 (.en(u_ena[0]), .data_in(data_in[10:4]), .parity_8(parity8), .parity_16(parity16));
	enc_parity_8 P8 (.en(ena), .data_in(data_in[3:0]), .parity_8(parity8));
	
	always_comb u_ena = {2{ena}} & codeword_width;
	
	always @ (*) begin
		if(ena)
			case(codeword_width)
				2'b00 	:	data_out = {{(DATA_WIDTH-8){'b0}},data_in[3:0],parity8};
				2'b01 	:	data_out = {{(DATA_WIDTH-16){'b0}},data_in[10:0],parity16};
				2'b01 	: 	data_out = {data_in[DATA_WIDTH-7:0],parity32};
				default : 	data_out = {{(DATA_WIDTH-8){'b0}},data_in[25:0],parity8};
			endcase
		else
			data_out = {DATA_WIDTH{1'b0}};
	end


endmodule