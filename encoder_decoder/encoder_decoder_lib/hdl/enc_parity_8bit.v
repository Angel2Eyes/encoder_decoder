//
// Verilog Module encoder_decoder_lib.enc_parity_8bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:32:57 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module enc_parity_8bit (	
  input 	wire[3:0] 	data_in,
	output 	reg[3:0]	parity_8
);
  
	always @ (data_in) begin
		parity_8[0] <= ^data_in[3:1];
		parity_8[1] <= ^data_in[2:0];
		parity_8[2] <= ^data_in[1:0] ^ data_in[3];
		parity_8[3] <= data_in[0] ^ ^data_in[3:2];
	end

endmodule
