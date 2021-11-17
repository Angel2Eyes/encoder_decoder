`resetall
`timescale 1ns/10ps
module testbench_dec_comparator ;

logic [31:0] s1;			
logic [31:0] s2;			
logic result;
logic clk;


always
  #1 clk <= ~clk;
  
dec_comparator #(
.DATA_DEPTH (32)
) inst
(
.A          (s1),
.B        (s2),
.isEqual	(result)
);

initial begin
  
  clk <= 1'b0;
  
  s1 = 32'b0;
  s2 = 32'b0;
  
  #20
  
  s1 = 32'b0;
  s2 = 32'b1;
  
  // #20
  
  // s1 = 8'd250;
  // s2 = 8'd250;
  
  // #20
  
  // s1 = 8'd0;
  // s2 = -8'd5;
  
  // #20
  
  // s1 = -8'd5;
  // s2 = -8'd5;
  
  #100
  
  //#10.2ns;
  
  repeat(10) @(posedge clk);
  
  //$finish(0);
  
end
endmodule
