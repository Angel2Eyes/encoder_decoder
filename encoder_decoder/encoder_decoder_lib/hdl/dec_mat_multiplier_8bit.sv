//
// Verilog Module encoder_decoder_lib.dec_mat_multiplier_8bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:54:59 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//
`resetall
`timescale 1ns/10ps
module dec_mat_multiplier_8bit 
(
input [7:0] codeword_with_errors,
output reg [3:0] mul_result
);

always @*
begin
	mul_result[0] <= codeword_with_errors[7] ^ codeword_with_errors[5] ^ codeword_with_errors[4] ^ codeword_with_errors[0];
	mul_result[1] <= codeword_with_errors[7] ^ codeword_with_errors[6] ^ codeword_with_errors[4] ^ codeword_with_errors[1];
	mul_result[2] <= codeword_with_errors[7] ^ codeword_with_errors[6] ^ codeword_with_errors[5] ^ codeword_with_errors[2];
	mul_result[3] <= codeword_with_errors[7] ^ codeword_with_errors[6] ^ codeword_with_errors[5] ^ codeword_with_errors[4] ^ codeword_with_errors[3] ^ codeword_with_errors[2] ^ codeword_with_errors[1] ^ codeword_with_errors[0];
end

endmodule
