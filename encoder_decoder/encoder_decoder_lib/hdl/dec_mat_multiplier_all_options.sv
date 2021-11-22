//
// Verilog Module encoder_decoder_lib.dec_mat_multiplier_all_options
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 16:58:24 11/17/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_mat_multiplier_all_options
#(
parameter DATA_WIDTH
)
(
input [DATA_WIDTH - 1:0] codeword_with_errors,
input [1:0] codeword_width,
output reg [5:0] mul_result
) ;

logic [5:0] result_32bit;
logic [4:0] result_16bit;
logic [3:0] result_8bit;

generate
	if(DATA_WIDTH == 8) begin
		dec_mat_multiplier_8bit inst_8bit
		(
		.codeword_with_errors          (codeword_with_errors),
		.mul_result        (result_8bit)
		);
	end
	
	else if(DATA_WIDTH == 16) begin
		dec_mat_multiplier_8bit inst_8bit
		(
		.codeword_with_errors          (codeword_with_errors[7:0]),
		.mul_result        (result_8bit)
		);
		
		dec_mat_multiplier_16bit inst_16bit
		(
		.codeword_with_errors          (codeword_with_errors),
		.mul_result        (result_16bit)
		);
	end
	
	else if(DATA_WIDTH == 32) begin
		dec_mat_multiplier_8bit inst_8bit
		(
		.codeword_with_errors          (codeword_with_errors[7:0]),
		.mul_result        (result_8bit)
		);
		
		dec_mat_multiplier_16bit inst_16bit
		(
		.codeword_with_errors          (codeword_with_errors[15:0]),
		.mul_result        (result_16bit)
		);
		
		dec_mat_multiplier_32bit inst_32bit
		(
		.codeword_with_errors          (codeword_with_errors),
		.mul_result        (result_32bit)
		);
	end
endgenerate

always @* 

begin 

 mul_result <= (codeword_width[1]) ? result_32bit : ((codeword_width[0]) ? {1'b0,result_16bit} : {2'b00,result_8bit}); 

end 

endmodule
