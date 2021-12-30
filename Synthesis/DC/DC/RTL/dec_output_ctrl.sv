//
// Verilog Module encoder_decoder_lib.dec_output_ctrl
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:41:16 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_output_ctrl 
#(
parameter DATA_WIDTH = 32
)
(
input [DATA_WIDTH - 1:0] codeword,
input areThereErrors,
input isThereOneError,
input [4:0] whichColIsError,
output reg [1:0] num_of_errors,
output reg [DATA_WIDTH - 1:0] data_out
);

logic [DATA_WIDTH - 1:0] flip_result;

dec_flip_a_bit 
#(
.DATA_WIDTH(DATA_WIDTH)
) flipper
(
.codeword (codeword),
.whichColIsError (whichColIsError),
.data_out (flip_result)
);

always @*
begin
	if(areThereErrors) begin
		num_of_errors <= 2'b00;
	end else if(isThereOneError) begin
		num_of_errors <= 2'b01;
	end else begin
		num_of_errors <= 2'b10;
	end
	
end

always @*
begin
	if(areThereErrors) begin
		data_out <= codeword;
	end else if(isThereOneError) begin
		data_out <= flip_result;
	end else begin
		data_out <= {DATA_WIDTH{1'b0}};
	end
	
end

endmodule
