

`resetall
`timescale 1ns/10ps
module testbench_dec_mat_multiplier_32bit ;

logic [31:0] codeword_with_errors;
logic [5:0] mul_result;			//output should be 0
logic clk;


always
  #1 clk <= ~clk;
  
dec_mat_multiplier_32bit inst
(
.codeword_with_errors          (codeword_with_errors),
.mul_result        (mul_result)
);

initial begin
  
  clk <= 1'b0;
  codeword_with_errors <= 32'b10101010101010101010101010101010;
  
  #10.2ns;
  
  repeat(10) @(posedge clk);
  
  $finish(0);
  
end
endmodule
