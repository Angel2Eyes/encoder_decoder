//
// Verilog Module encoder_decoder_lib.dec_mat_multiplier_16bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 18:28:40 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_mat_multiplier_16bit
(
input [15:0] codeword_with_errors,
output reg [4:0] mul_result
); 

always @*
begin
	mul_result[0] <= 
	codeword_with_errors[0] ^ 
	codeword_with_errors[5] ^ 
	codeword_with_errors[6] ^ 
	codeword_with_errors[8] ^ 
	codeword_with_errors[9] ^ 
	codeword_with_errors[11] ^ 
	codeword_with_errors[13] ^ 
	codeword_with_errors[15];
	
	mul_result[1] <= 
	codeword_with_errors[1] ^ 
	codeword_with_errors[5] ^ 
	codeword_with_errors[7] ^ 
	codeword_with_errors[8] ^ 
	codeword_with_errors[10] ^ 
	codeword_with_errors[11] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[15];
	
	mul_result[2] <= 
	codeword_with_errors[2] ^ 
	codeword_with_errors[6] ^ 
	codeword_with_errors[7] ^ 
	codeword_with_errors[8] ^ 
	codeword_with_errors[12] ^ 
	codeword_with_errors[13] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[15];
	
	mul_result[3] <= 
	codeword_with_errors[3] ^ 
	codeword_with_errors[9] ^ 
	codeword_with_errors[10] ^ 
	codeword_with_errors[11] ^ 
	codeword_with_errors[12] ^ 
	codeword_with_errors[13] ^ 
	codeword_with_errors[14] ^ 
	codeword_with_errors[15];
	
	mul_result[4] <= 
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
	codeword_with_errors[15];
	
	end

endmodule