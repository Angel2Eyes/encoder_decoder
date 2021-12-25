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
#(
parameter DATA_WIDTH = 32
)
(
input [DATA_WIDTH - 1:0] codeword,
input [1:0] codeword_width,
input		enable,
output reg [1:0] num_of_errors,
output reg [DATA_WIDTH - 1:0] data_out
);

logic [5:0] s;
logic isSColInMat;
logic [4:0] whatColisS;
logic does_s_equal_zero;
logic [DATA_WIDTH - 1:0] temp_data_out;

dec_mat_multiplier_all_options 
#(
.DATA_WIDTH(DATA_WIDTH)
)
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

dec_output_ctrl
#(
.DATA_WIDTH(DATA_WIDTH)
) output_ctrl
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
if(enable)
	case(codeword_width)
		2'b00 	:	data_out = {{(DATA_WIDTH-4){1'b0}},temp_data_out[7:4]};
		2'b01 	:	data_out = {{(DATA_WIDTH-11){1'b0}},temp_data_out[15:5]};
		2'b10 	: 	data_out = {{(DATA_WIDTH-26){1'b0}},temp_data_out[31:6]};
		default : 	data_out = {{(DATA_WIDTH-6){1'b0}},temp_data_out[25:6]};
	endcase
else
	data_out = {DATA_WIDTH{1'b0}};
end 


endmodule
