

`resetall
`timescale 1ns/10ps
module testbench_dec_mat_multiplier_8bit ;

logic codeword_with_errors [7:0] = 8'b10001010;  
logic mul_result [3:0];			//output should be 1101


always
  #1 clk <= ~clk;
  
dec_mat_multiplier_8bit inst
(
.codeword_with_errors          (codeword_with_errors),
.mul_result        (mul_result)
);

initial begin
  
  #10.2ns;
  
  repeat(10) @(posedge clk);
  
  $finish(0);
  
end
endmodule
