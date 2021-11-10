//
// Verilog Module encoder_decoder_lib.enc_parity_16bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:33:17 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module enc_parity_16bit (	
  input 	wire[10:0] 	data_in,
  output 	reg[4:0]	parity_16
);
  
	always @ (data_in) begin
		parity_16[0] <= data_in[0] ^ data_in[3] ^ data_in[5] ^ data_in[6] ^ data_in[8] ^ data_in[9] ^ data_in[10];
		parity_16[1] <= ^data_in[6:0];
		parity_16[2] <= (^data_in[3:0]) ^ (^data_in[9:7]);
		parity_16[3] <= (^data_in[1:0]) ^ (^data_in[5:4]) ^ (^data_in[8:7]) ^ data_in[10];
		parity_16[4] <= data_in[0] ^ data_in[2] ^ data_in[4] ^ data_in[6] ^ data_in[7]  ^ data_in[9] ^ data_in[10];
	end

endmodule
