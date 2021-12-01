//
// Verilog Module encoder_decoder_lib.dec_mat_multiplier_32bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 18:36:48 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_mat_multiplier_32bit 
(
input [31:0] codeword_with_errors,
output reg [5:0] mul_result
); 

always @*
begin
	
	mul_result[0] <= 
	codeword_with_errors[0] ^ 
	codeword_with_errors[6] ^ 
	codeword_with_errors[7] ^ 
	codeword_with_errors[9] ^ 
	codeword_with_errors[10] ^ 
	codeword_with_errors[12] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[16] ^
	codeword_with_errors[17] ^ 
	codeword_with_errors[19] ^ 
	codeword_with_errors[21] ^ 
	codeword_with_errors[23] ^
	codeword_with_errors[25] ^ 
	codeword_with_errors[27] ^ 
	codeword_with_errors[29] ^
	codeword_with_errors[31];
	
	mul_result[1] <= 
	codeword_with_errors[1] ^ 
	codeword_with_errors[6] ^ 
	codeword_with_errors[8] ^ 
	codeword_with_errors[9] ^ 
	codeword_with_errors[11] ^ 
	codeword_with_errors[12] ^ 
	codeword_with_errors[15] ^ 
	codeword_with_errors[16] ^
	codeword_with_errors[18] ^ 
	codeword_with_errors[19] ^ 
	codeword_with_errors[22] ^ 
	codeword_with_errors[23] ^
	codeword_with_errors[26] ^ 
	codeword_with_errors[27] ^ 
	codeword_with_errors[30] ^
	codeword_with_errors[31];
	
	mul_result[2] <= 
	codeword_with_errors[2] ^ 
	codeword_with_errors[7] ^ 
	codeword_with_errors[8] ^ 
	codeword_with_errors[9] ^ 
	codeword_with_errors[13] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[15] ^ 
	codeword_with_errors[16] ^
	codeword_with_errors[20] ^ 
	codeword_with_errors[21] ^ 
	codeword_with_errors[22] ^ 
	codeword_with_errors[23] ^
	codeword_with_errors[28] ^ 
	codeword_with_errors[29] ^ 
	codeword_with_errors[30] ^
	codeword_with_errors[31];
	
	mul_result[3] <= 
	codeword_with_errors[3] ^ 
	codeword_with_errors[10] ^ 
	codeword_with_errors[11] ^ 
	codeword_with_errors[12] ^ 
	codeword_with_errors[13] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[15] ^ 
	codeword_with_errors[16] ^
	codeword_with_errors[24] ^ 
	codeword_with_errors[25] ^ 
	codeword_with_errors[26] ^ 
	codeword_with_errors[27] ^
	codeword_with_errors[28] ^ 
	codeword_with_errors[29] ^ 
	codeword_with_errors[30] ^
	codeword_with_errors[31];
	
	mul_result[4] <= 
	codeword_with_errors[4] ^ 
	codeword_with_errors[17] ^ 
	codeword_with_errors[18] ^ 
	codeword_with_errors[19] ^ 
	codeword_with_errors[20] ^ 
	codeword_with_errors[21] ^ 
	codeword_with_errors[22] ^ 
	codeword_with_errors[23] ^
	codeword_with_errors[24] ^ 
	codeword_with_errors[25] ^ 
	codeword_with_errors[26] ^ 
	codeword_with_errors[27] ^
	codeword_with_errors[28] ^ 
	codeword_with_errors[29] ^ 
	codeword_with_errors[30] ^
	codeword_with_errors[31];
	
	mul_result[5] <= 
	codeword_with_errors[0] ^ 
	codeword_with_errors[1] ^ 
	codeword_with_errors[2] ^ 
	codeword_with_errors[3] ^ 
	codeword_with_errors[4] ^ 
	codeword_with_errors[5] ^ 
	codeword_with_errors[6] ^ 
	codeword_with_errors[7] ^ 
	codeword_with_errors[8] ^ 
	codeword_with_errors[9] ^ 
	codeword_with_errors[10] ^ 
	codeword_with_errors[11] ^ 
	codeword_with_errors[12] ^ 
	codeword_with_errors[13] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[15] ^ 
	codeword_with_errors[16] ^ 
	codeword_with_errors[17] ^ 
	codeword_with_errors[18] ^ 
	codeword_with_errors[19] ^ 
	codeword_with_errors[20] ^ 
	codeword_with_errors[21] ^ 
	codeword_with_errors[22] ^ 
	codeword_with_errors[23] ^ 
	codeword_with_errors[24] ^ 
	codeword_with_errors[25] ^ 
	codeword_with_errors[26] ^ 
	codeword_with_errors[27] ^ 
	codeword_with_errors[28] ^ 
	codeword_with_errors[29] ^ 
	codeword_with_errors[30] ^ 
	codeword_with_errors[31];
	
	end

endmodule