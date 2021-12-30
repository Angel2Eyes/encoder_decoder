//
// Verilog Module encoder_decoder_lib.dec_priority_encoder
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 19:00:36 11/17/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_priority_encoder(
input [31:0] Y, 
output reg [4:0] A 
) ;

always@(Y)  
begin  
casex(Y)  
32'b00000000000000000000000000000001:A = 5'b00000;  
32'b0000000000000000000000000000001x:A = 5'b00001; 
32'b000000000000000000000000000001xx:A = 5'b00010; 
32'b00000000000000000000000000001xxx:A = 5'b00011; 
32'b0000000000000000000000000001xxxx:A = 5'b00100; 
32'b000000000000000000000000001xxxxx:A = 5'b00101; 
32'b00000000000000000000000001xxxxxx:A = 5'b00110; 
32'b0000000000000000000000001xxxxxxx:A = 5'b00111; 
32'b000000000000000000000001xxxxxxxx:A = 5'b01000;  
32'b00000000000000000000001xxxxxxxxx:A = 5'b01001; 
32'b0000000000000000000001xxxxxxxxxx:A = 5'b01010; 
32'b000000000000000000001xxxxxxxxxxx:A = 5'b01011; 
32'b00000000000000000001xxxxxxxxxxxx:A = 5'b01100; 
32'b0000000000000000001xxxxxxxxxxxxx:A = 5'b01101; 
32'b000000000000000001xxxxxxxxxxxxxx:A = 5'b01110; 
32'b00000000000000001xxxxxxxxxxxxxxx:A = 5'b01111;
32'b0000000000000001xxxxxxxxxxxxxxxx:A = 5'b10000;  
32'b000000000000001xxxxxxxxxxxxxxxxx:A = 5'b10001; 
32'b00000000000001xxxxxxxxxxxxxxxxxx:A = 5'b10010; 
32'b0000000000001xxxxxxxxxxxxxxxxxxx:A = 5'b10011; 
32'b000000000001xxxxxxxxxxxxxxxxxxxx:A = 5'b10100; 
32'b00000000001xxxxxxxxxxxxxxxxxxxxx:A = 5'b10101; 
32'b0000000001xxxxxxxxxxxxxxxxxxxxxx:A = 5'b10110; 
32'b000000001xxxxxxxxxxxxxxxxxxxxxxx:A = 5'b10111;
32'b00000001xxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11000;  
32'b0000001xxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11001; 
32'b000001xxxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11010; 
32'b00001xxxxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11011; 
32'b0001xxxxxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11100; 
32'b001xxxxxxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11101; 
32'b01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11110; 
32'b1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:A = 5'b11111;
default:A = 5'bZZZZZ;  
endcase  
end   

endmodule
