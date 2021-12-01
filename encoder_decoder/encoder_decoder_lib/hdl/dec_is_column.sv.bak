//
// Verilog Module encoder_decoder_lib.dec_is_column
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 17:41:52 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module dec_is_column 
(
  input [5:0] s,
  input [1:0] codeword_width,
  output reg isCol,
  output reg [4:0] whatCol
  );
  
  logic [5:0] comp_input [31:0];
  logic [31:0] isEqual;
  
  //instantiate comparators			
  generate
    for (genvar i=0; i<=31; i=i+1) begin
      dec_comparator_all_options comparator
      (
        .A(s),
        .B(comp_input[i]),
        .codeword_width(codeword_width),
        .isEqual(isEqual[i])
      );
    end 
  endgenerate	
  
  dec_priority_encoder encoder
  (
    .Y (isEqual),
    .A (whatCol)
  );		
  
  // 	initialize inputs and define output		
  always @*
  begin
  
    // we work with 32 bits
    if(codeword_width[1]) begin
    
      // initiate columns
      comp_input[31] <= 6'b111111;
      comp_input[30] <= 6'b111110;
      comp_input[29] <= 6'b111101;
      comp_input[28] <= 6'b111100;
      comp_input[27] <= 6'b111011;
      comp_input[26] <= 6'b111010;
      comp_input[25] <= 6'b111001;
      comp_input[24] <= 6'b111000;
      comp_input[23] <= 6'b110111;
      comp_input[22] <= 6'b110110;
      comp_input[21] <= 6'b110101;
      comp_input[20] <= 6'b110100;
      comp_input[19] <= 6'b110011;
      comp_input[18] <= 6'b110010;
      comp_input[17] <= 6'b110001;
      comp_input[16] <= 6'b101111;
      comp_input[15] <= 6'b101110;
      comp_input[14] <= 6'b101101;
      comp_input[13] <= 6'b101100;
      comp_input[12] <= 6'b101011;
      comp_input[11] <= 6'b101010;
      comp_input[10] <= 6'b101001;
      comp_input[9] <= 6'b100111;
      comp_input[8] <= 6'b100110;
      comp_input[7] <= 6'b100101;
      comp_input[6] <= 6'b100011;
      comp_input[5] <= 6'b100000;
      comp_input[4] <= 6'b110000;
      comp_input[3] <= 6'b101000;
      comp_input[2] <= 6'b100100;
      comp_input[1] <= 6'b100010;
      comp_input[0] <= 6'b100001;
      
      // calculate if any column matches
      isCol <= | isEqual;
          	
    // we work with 16 bit
    end else if(codeword_width[0]) begin
      comp_input[31] <= 6'b000000;
      comp_input[30] <= 6'b000000;
      comp_input[29] <= 6'b000000;
      comp_input[28] <= 6'b000000;
      comp_input[27] <= 6'b000000;
      comp_input[26] <= 6'b000000;
      comp_input[25] <= 6'b000000;
      comp_input[24] <= 6'b000000;
      comp_input[23] <= 6'b000000;
      comp_input[22] <= 6'b000000;
      comp_input[21] <= 6'b000000;
      comp_input[20] <= 6'b000000;
      comp_input[19] <= 6'b000000;
      comp_input[18] <= 6'b000000;
      comp_input[17] <= 6'b000000;
      comp_input[16] <= 6'b000000;
      comp_input[15] <= 6'b011111;
      comp_input[14] <= 6'b011110;
      comp_input[13] <= 6'b011101;
      comp_input[12] <= 6'b011100;
      comp_input[11] <= 6'b011011;
      comp_input[10] <= 6'b011010;
      comp_input[9] <= 6'b011001;
      comp_input[8] <= 6'b010111;
      comp_input[7] <= 6'b010110;
      comp_input[6] <= 6'b010101;
      comp_input[5] <= 6'b010011;
      comp_input[4] <= 6'b010000;
      comp_input[3] <= 6'b011000;
      comp_input[2] <= 6'b010100;
      comp_input[1] <= 6'b010010;
      comp_input[0] <= 6'b010001;
      
      // calculate if any column matches
      isCol <= | (isEqual[15:0]);
    	
    // we work with 8 bit
    end else begin
      comp_input[31] <= 6'b000000;
      comp_input[30] <= 6'b000000;
      comp_input[29] <= 6'b000000;
      comp_input[28] <= 6'b000000;
      comp_input[27] <= 6'b000000;
      comp_input[26] <= 6'b000000;
      comp_input[25] <= 6'b000000;
      comp_input[24] <= 6'b000000;
      comp_input[23] <= 6'b000000;
      comp_input[22] <= 6'b000000;
      comp_input[21] <= 6'b000000;
      comp_input[20] <= 6'b000000;
      comp_input[19] <= 6'b000000;
      comp_input[18] <= 6'b000000;
      comp_input[17] <= 6'b000000;
      comp_input[16] <= 6'b000000;
      comp_input[15] <= 6'b000000;
      comp_input[14] <= 6'b000000;
      comp_input[13] <= 6'b000000;
      comp_input[12] <= 6'b000000;
      comp_input[11] <= 6'b000000;
      comp_input[10] <= 6'b000000;
      comp_input[9] <= 6'b000000;
      comp_input[8] <= 6'b000000;
      comp_input[7] <= 6'b001111;
      comp_input[6] <= 6'b001110;
      comp_input[5] <= 6'b001101;
      comp_input[4] <= 6'b001011;
      comp_input[3] <= 6'b001000;
      comp_input[2] <= 6'b001100;
      comp_input[1] <= 6'b001010;
      comp_input[0] <= 6'b001001;
      
      // calculate if any column matches
      isCol <= | (isEqual[7:0]);
    end
  
  end


endmodule
