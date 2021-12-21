//
// Verilog Module encoder_decoder_lib.Coverage
//
// Created:
//          by - katrinn.UNKNOWN (L330W526)
//          at - 16:48:57 12/19/2021
//
// using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module Coverage #(
  parameter DATA_WIDTH = 32)
  ( Interface.checker_coverager coverage_bus )
  ;


covergroup regular_rest @( posedge coverage_bus.clk );
				
				Reset: coverpoint coverage_bus.rst{
        bins low = {0};
        bins high = {1};
        }
        
        Control: coverpoint coverage_bus.ctrl{
        bins enc = {0};
        bins dec = {1};
        bins enc_dec = {2};
        }
        
        Codeword_width: coverpoint coverage_bus.codeword_width{
        bins w8 = {0};
        bins w16 = {1};
        bins w32 = {2};
        }
        
        Noise_add: coverpoint coverage_bus.noise{
        bins no_noise = {0};
        bins noise = {[1:$]};
        }
        
        Num_of_errors: coverpoint coverage_bus.err_num{
        bins no_err = {0};
        bins one_err = {1};
        bins two_err = {2};
        }
        //clk, rst, ctrl, data_in, codeword_width, noise
				endgroup 

endmodule