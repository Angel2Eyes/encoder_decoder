//
// Verilog Module encoder_decoder_lib.decoder
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 16:01:02 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module decoder 
(
input [31:0] codeword,
input [1:0] codeword_width,
output reg [1:0] num_of_errors,
output reg [31:0] data_out
);

logic [5:0] s;
logic isSColInMat;
logic [4:0] whatColisS;
logic does_s_equal_zero;
logic [31:0] temp_data_out;

dec_mat_multiplier_all_options 

multiplier (
.codeword_with_errors (codeword),
.codeword_width (codeword_width),
.mul_result (s)
);

dec_is_column is_col
(
	.s (s),
	.codeword_width (codeword_width),
	.isCol (isSColInMat),
	.whatCol (whatColisS)
);

dec_comparator #(.DATA_DEPTH (6)) comp_to_zero
(
.A (s),
.B (6'b000000),
.isEqual (does_s_equal_zero)
);

dec_output_ctrl output_ctrl
(
	.codeword (codeword),
	.areThereErrors (does_s_equal_zero),
	.isThereOneError (isSColInMat),
	.whichColIsError (whatColisS),
	.num_of_errors (num_of_errors),
	.data_out (temp_data_out)
);

always @* 

begin 

 data_out <= (codeword_width[1]) ? {6'b000000,temp_data_out[31:6]} : ((codeword_width[0]) ? {5'b00000,temp_data_out[31:5]} : {4'b0000,temp_data_out[31:4]}); 

end 


endmodule
