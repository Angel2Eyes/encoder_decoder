`resetall
`timescale 1ns/10ps
module testbench_decoder ;

logic [31:0] codeword;	
logic [1:0]	codeword_width;
logic [1:0] num_of_errors;
logic [31:0] data_out;
logic clk;


always
  #1 clk <= ~clk;
  
decoder inst
(
.codeword           (codeword),
.codeword_width     (codeword_width),
.num_of_errors		(num_of_errors),
.data_out			(data_out)
);

initial begin
  
  clk <= 1'b0;
  
  #20
  
  // should output the same codeword, no errors
  codeword = 32'b10101010101010101010101010101010;
  codeword_width = 2'b10;
  
  #20
  
  // should output 1010, 1 error
  codeword = 32'b00000000000000000000000010001010;
  codeword_width = 2'b00;
  
  #20
  
  // should output ZZZZZZZZ, 2 errors
  codeword = 32'b00000000000000000000000010001011;
  codeword_width = 2'b00;
  
  #20
  
  // should output the same codeword, no errors
  codeword = 32'b00000000000000001010101010100101;
  codeword_width = 2'b01;
  
  #20
  
  // should output 10101010101, 1 error
  codeword = 32'b00000000000000001010101010101101;
  codeword_width = 2'b01;
  
  #100
  
  //#10.2ns;
  
  repeat(10) @(posedge clk);
  
  //$finish(0);
  
end
endmodule
