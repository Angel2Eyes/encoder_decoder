//
// Verilog Module encoder_decoder_lib.enc_parity_32bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:33:31 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module enc_parity_32bit (	
  input 	wire[25:0] 	data_in,
	output 	reg[5:0]	parity_32
);
  
	always @ (data_in) begin
		parity_32[0] <= ^data_in[2:1] ^ data_in[4] ^ ^data_in[8:7] ^ data_in[11] ^ ^data_in[15:13] ^ data_in[18] ^  ^data_in[21:20] ^ ^data_in[25:23];
		parity_32[1] <= ^data_in[14:0];
		parity_32[2] <= (^data_in[7:0]) ^ (^data_in[21:15]);
		parity_32[3] <= (^data_in[3:0]) ^ (^data_in[11:8]) ^ (^data_in[18:15]) ^ data_in[24:22];
		parity_32[4] <= (^data_in[1:0]) ^ (^data_in[5:4]) ^ (^data_in[9:8]) ^ (^data_in[13:12]) ^ (^data_in[16:15]) ^ (^data_in[20:19]) ^ (^data_in[23:22]) ^ data_in[25];
		parity_32[5] <= data_in[0] ^ data_in[2] ^ data_in[4] ^ data_in[6] ^ data_in[8]  ^ data_in[10] ^ data_in[12] ^ data_in[14] ^ data_in[15] ^ data_in[17] ^ data_in[19]  ^ data_in[21] ^ data_in[22] ^ data_in[24]  ^ data_in[25];
	end

endmodule
