`resetall
`timescale 1ns/10ps
module testbench_dec_output_ctrl ;

logic [31:0] codeword;	
logic 		areThereErrors;
logic isThereOneError;
logic [4:0] whichColIsError;
logic [1:0] num_of_errors;
logic [31:0] data_out;
logic clk;


always
  #1 clk <= ~clk;
  
dec_output_ctrl inst
(
.codeword           (codeword),
.areThereErrors     (areThereErrors),
.isThereOneError	(isThereOneError),
.whichColIsError	(whichColIsError),
.num_of_errors		(num_of_errors),
.data_out			(data_out)
);

initial begin
  
  clk <= 1'b0;
  
  #20
  
  codeword = 32'b10101010101010101010101010101010;
  areThereErrors = 1'b1;
  isThereOneError = 1'b0;
  whichColIsError = 5'bZZZZZ;
  
  #20
  
  codeword = 32'b00000000000000000000000010001010;
  areThereErrors = 1'b0;
  isThereOneError = 1'b1;
  whichColIsError = 5'b00101;
  
  #20
  
  codeword = 32'b00000000000000000000000010001011;
  areThereErrors = 1'b0;
  isThereOneError = 1'b0;
  whichColIsError = 5'bZZZZZ;
  
  #100
  
  //#10.2ns;
  
  repeat(10) @(posedge clk);
  
  //$finish(0);
  
end
endmodule
