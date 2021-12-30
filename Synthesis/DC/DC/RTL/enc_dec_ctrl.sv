//
// Verilog Module encoder_decoder_lib.enc_dec_ctrl
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W530)
//          at - 16:00:43 11/10/2021
//
// using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module enc_dec_ctrl
	#( 	parameter AMBA_ADDR_WIDTH = 32,
		parameter AMBA_WORD = 32)
	(


	input									clk,
	input 									rst,
		
	////////////////////////////	
	//Interface with APB master	
	////////////////////////////	
		
	input	logic [AMBA_ADDR_WIDTH-1:0]		paddr,
	input	logic							regs_wr_en,
	
	//regiter values
	input	logic [AMBA_WORD-1:0]			ctrl_reg,
	
	//Control signals
	output	logic							enc_ena,
	output	logic							dec_ena,
	output	logic							dec_in_sel,
	output	logic							data_out_sel,							
	
	output	logic							operation_done
	);
	

	logic [1:0]					ctrl;		
	logic 						flagClock1, flagClock2, start;
	
	
	
	
	always_comb begin
	  ctrl[0] = ~ctrl_reg[0];
	  ctrl[1] = ctrl_reg[0] ^ ctrl_reg[1];
	end 
		
	always_comb enc_ena = ctrl[0];
	always_comb dec_ena = ctrl[1];
	always_comb dec_in_sel = &ctrl;  		// 0 : data_in, 1 : enc_data_out
	always_comb data_out_sel = ctrl[1]; 	// 0 : enc_data_out, 1 : dec_data_out
	
	always_ff @(posedge clk) begin
		if(~rst)
			start <= 1'b0;
		else
			start <= regs_wr_en & ~|paddr;
	end
	
	always_ff @(posedge clk) begin
		if(~rst)
			flagClock1 <= 1'b0;
		else
			flagClock1 <= start;
	end
	
	always_ff @(posedge clk) begin
		if(~rst)
			flagClock2 <= 1'b0;
		else
			flagClock2 <= flagClock1;
	end

	// operation is done only when we need 1 operation ( we wait 1 cycle) or we need 2 operations ( we wait 2 cycles)
	always_comb operation_done = (^ctrl & flagClock1) | (&ctrl & flagClock2);
	
endmodule