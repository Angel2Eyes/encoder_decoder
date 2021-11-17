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
(
input [31:0] codeword,
input areThereErrors,
input isThereOneError,
input [4:0] whichColIsError,
output reg [1:0] num_of_errors,
output reg [31:0] data_out
);

reg [31:0] flip_result;

dec_flip_a_bit flipper
(
.codeword (codeword),
.whichColIsError (whichColIsError),
.data_out (flip_result)
);

always @*
begin
	if(areThereErrors) begin
		num_of_errors <= 2'b00;
		data_out <= codeword;
	end else if(isThereOneError) begin
		num_of_errors <= 2'b01;
		data_out <= flip_result;
	end else begin
		num_of_errors <= 2'b10;
		data_out <= 32'bZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ;
	end
	
end

endmodule
