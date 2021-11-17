

`resetall
`timescale 1ns/10ps
module testbench_dec_mat_multiplier_8bit ;

logic [7:0] codeword_with_errors;// = 8'b10001010;  
logic [3:0] mul_result;			//output should be 1101
logic clk;


always
  #1 clk <= ~clk;
  
dec_mat_multiplier_8bit inst
(
.codeword_with_errors          (codeword_with_errors),
.mul_result        (mul_result)
);

initial begin
  
  clk <= 1'b0;
  codeword_with_errors <= 8'b10001010;
  
  #10.2ns;
  
  repeat(10) @(posedge clk);
  
  $finish(0);
  
end
endmodule
