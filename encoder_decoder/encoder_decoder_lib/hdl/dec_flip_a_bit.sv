//
// Verilog Module encoder_decoder_lib.dec_flip_a_bit
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 19:43:38 11/17/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_flip_a_bit 
(
input [31:0] codeword,
input [4:0] whichColIsError,
output reg [31:0] data_out
);

always @*  
begin  
casex(whichColIsError)  
5'b00000:data_out = {codeword[31:1],~codeword[0]};  
5'b00001:data_out = {codeword[31:2],~codeword[1],codeword[0]}; 
5'b00010:data_out = {codeword[31:3],~codeword[2],codeword[1:0]}; 
5'b00011:data_out = {codeword[31:4],~codeword[3],codeword[2:0]}; 
5'b00100:data_out = {codeword[31:5],~codeword[4],codeword[3:0]}; 
5'b00101:data_out = {codeword[31:6],~codeword[5],codeword[4:0]}; 
5'b00110:data_out = {codeword[31:7],~codeword[6],codeword[5:0]}; 
5'b00111:data_out = {codeword[31:8],~codeword[7],codeword[6:0]}; 
5'b01000:data_out = {codeword[31:9],~codeword[8],codeword[7:0]};  
5'b01001:data_out = {codeword[31:10],~codeword[9],codeword[8:0]}; 
5'b01010:data_out = {codeword[31:11],~codeword[10],codeword[9:0]}; 
5'b01011:data_out = {codeword[31:12],~codeword[11],codeword[10:0]}; 
5'b01100:data_out = {codeword[31:13],~codeword[12],codeword[11:0]}; 
5'b01101:data_out = {codeword[31:14],~codeword[13],codeword[12:0]}; 
5'b01110:data_out = {codeword[31:15],~codeword[14],codeword[13:0]}; 
5'b01111:data_out = {codeword[31:16],~codeword[15],codeword[14:0]};
5'b10000:data_out = {codeword[31:17],~codeword[16],codeword[15:0]};  
5'b10001:data_out = {codeword[31:18],~codeword[17],codeword[16:0]}; 
5'b10010:data_out = {codeword[31:19],~codeword[18],codeword[17:0]}; 
5'b10011:data_out = {codeword[31:20],~codeword[19],codeword[18:0]}; 
5'b10100:data_out = {codeword[31:21],~codeword[20],codeword[19:0]}; 
5'b10101:data_out = {codeword[31:22],~codeword[21],codeword[20:0]}; 
5'b10110:data_out = {codeword[31:23],~codeword[22],codeword[21:0]}; 
5'b10111:data_out = {codeword[31:24],~codeword[23],codeword[22:0]};
5'b11000:data_out = {codeword[31:25],~codeword[24],codeword[23:0]};  
5'b11001:data_out = {codeword[31:26],~codeword[25],codeword[24:0]}; 
5'b11010:data_out = {codeword[31:27],~codeword[26],codeword[25:0]}; 
5'b11011:data_out = {codeword[31:28],~codeword[27],codeword[26:0]}; 
5'b11100:data_out = {codeword[31:29],~codeword[28],codeword[27:0]}; 
5'b11101:data_out = {codeword[31:30],~codeword[29],codeword[28:0]}; 
5'b11110:data_out = {codeword[31],~codeword[30],codeword[29:0]}; 
5'b11111:data_out = {~codeword[31],codeword[30:0]};
default:data_out = 32'bZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ;  
endcase  
end   

endmodule
