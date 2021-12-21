//
// Verilog Module encoder_decoder_lib.verification_Interface
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W527)
//          at - 15:09:24 12/19/2021
//
// using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
interface verification_Interface
        #( 	parameter AMBA_ADDR_WIDTH = 32,
		        parameter AMBA_WORD = 32,
		        parameter DATA_WIDTH = 32)();
		        
		//signals decleration
		logic clk;
		logic rst;
		logic [AMBA_ADDR_WIDTH-1:0] paddr;
		logic [AMBA_WORD-1:0]			pwdata;
    logic							penable;
    logic							psel;
    logic							pwrite;
    
    logic [AMBA_WORD-1:0]			prdata;
    logic [DATA_WIDTH-1:0]			data_out;
    
    logic							operation_done;
    logic [1:0]						num_of_errors;	
    
    logic [1:0] type_of_work; //0 = nothing, 1 = encode, 2 = decode, 3 = full channel
    logic [DATA_WIDTH-1:0]			data_in;
    logic [DATA_WIDTH-1:0]			stim_num_of_errors;
    

    modport stimulus (output clk,rst,paddr,pwdata,penable,psel,pwrite, type_of_work,data_in,stim_num_of_errors);
    modport ecc_enc_dec (input clk,rst,paddr,pwdata,penable,psel,pwrite, output prdata,data_out,operation_done,num_of_errors);
    modport chcker_coverager (input clk,rst,paddr,pwdata,penable,psel,pwrite,prdata,data_out,operation_done,num_of_errors, type_of_work,data_in,stim_num_of_errors);
 
 
endinterface 
