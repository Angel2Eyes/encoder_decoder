//
// Verilog Module encoder_decoder_lib.dec_comparator
//
// Created: 
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:40:42 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_comparator
#(
parameter DATA_DEPTH = 8
)
(
input [DATA_DEPTH-1:0] A,
input [DATA_DEPTH-1:0] B,
output reg isEqual
) ;

always @* 

begin 

 isEqual <= ( A === B)? 1'b1 : 1'b0; 

end 

endmodule
