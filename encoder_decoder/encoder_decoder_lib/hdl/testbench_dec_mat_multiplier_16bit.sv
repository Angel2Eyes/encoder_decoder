

`resetall
`timescale 1ns/10ps
module testbench_dec_mat_multiplier_16bit ;

logic [15:0] codeword_with_errors;// = 8'b10001010;  
logic [4:0] mul_result;			//output should be 00000
logic clk;


always
  #1 clk <= ~clk;
  
dec_mat_multiplier_16bit inst
(
.codeword_with_errors          (codeword_with_errors),
.mul_result        (mul_result)
);

initial begin
  
  clk <= 1'b0;
  codeword_with_errors <= 16'b1010101010100101;
  
  #10.2ns;
  
  repeat(10) @(posedge clk);
  
  $finish(0);
  
end
endmodule
