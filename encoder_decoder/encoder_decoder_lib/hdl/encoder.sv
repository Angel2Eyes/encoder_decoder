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
	(CODEWORD_WIDTH, data_in, data_out);

	input [1:0] 				CODEWORD_WIDTH;
	input [AMBA_WORD - 1 : 0] 	data_in;
	
	output reg[DATA_WIDTH - 1 : 0] data_out;
	
	wire[3:0]	parity8;
	wire[4:0]	parity16;
	wire[5:0]	parity32;
	
	enc_parity_32 P32 (.en(CODEWORD_WIDTH[1]),.data_in(data_in[25:11]), .parity_16(parity16), .parity_32(parity32));
	enc_parity_16 P16 (.en(CODEWORD_WIDTH[0]), .data_in(data_in[10:4]), .parity_8(parity8), .parity_16(parity16));
	enc_parity_8 P8 (.data_in(data_in[3:0]), .parity_8(parity8));
	
	always @ (*) begin
		case(CODEWORD_WIDTH)
			2'b00 	:	data_out = {'b0,data_in[3:0],parity8};
			2'b01 	:	data_out = {'b0,data_in[10:0],parity16};
			2'b01 	: 	data_out = {data_in[25:0],parity32};
			default : 	data_out = {'b0,data_in[25:0],parity8};
		endcase
	end


endmodule