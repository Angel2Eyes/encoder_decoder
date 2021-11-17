//
// Verilog Module encoder_decoder_lib.dec_comparator_all_options
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 16:46:37 11/17/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_comparator_all_options
(
input [31:0] A,
input [31:0] B,
input [1:0] codeword_width,
output reg isEqual
) ;

logic result_8bit, result_16bit, result_32bit;

dec_comparator #(
.DATA_DEPTH (32)
) inst_32bit
(
.A          (A),
.B        (B),
.isEqual	(result_32bit)
);

dec_comparator #(
.DATA_DEPTH (16)
) inst_16bit
(
.A          (A[15:0]),
.B        (B[15:0]),
.isEqual	(result_16bit)
);

dec_comparator #(
.DATA_DEPTH (8)
) inst_8bit
(
.A          (A[7:0]),
.B        (B[7:0]),
.isEqual	(result_8bit)
);

always @* 

begin 

 isEqual <= (codeword_width[1]) ? result_32bit : ((codeword_width[0]) ? result_16bit : result_8bit); 

end 

endmodule
