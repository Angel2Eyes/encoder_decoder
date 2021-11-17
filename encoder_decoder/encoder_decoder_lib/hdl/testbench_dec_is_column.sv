`resetall
`timescale 1ns/10ps
module testbench_dec_is_column ;

logic [5:0] s;			
logic [1:0] codeword_width;
logic [4:0] whatCol;			
logic result;
logic clk;


always
  #1 clk <= ~clk;
  
dec_is_column inst
(
.s          (s),
.codeword_width        (codeword_width),
.isCol	(result),
.whatCol (whatCol)
);

initial begin
  
  clk <= 1'b0;
  
  #20
  
  s = 6'b111001;
  codeword_width = 2'b10;
  
  #20
  
  s = 6'b011001;
  codeword_width = 2'b10;
  
  #20
  
  s = 6'b001101;
  codeword_width = 2'b00;
  
  #20
  
  s = 6'b000100;
  codeword_width = 2'b00;
  
  #20
  
  s = 6'b011011;
  codeword_width = 2'b01;
  
  #20
  
  s = 6'b001011;
  codeword_width = 2'b01;
  
  #20
  
  
  #100
  
  //#10.2ns;
  
  repeat(10) @(posedge clk);
  
  //$finish(0);
  
end
endmodule
