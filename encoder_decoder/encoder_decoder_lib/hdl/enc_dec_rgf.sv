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
module enc_dec_rgf
	#( 	parameter AMBA_ADDR_WIDTH = 32,
		parameter AMBA_WORD = 32)
	(


	input									clk,
	input 									rstn,
		
	////////////////////////////	
	//Interface with APB master	
	////////////////////////////	
		
	input	logic [AMBA_ADDR_WIDTH-1:0]		paddr,
	input	logic [AMBA_WORD-1:0]			pwdata,
	input	logic							regs_wr_en,
	input	logic							regs_rd_en,
	
	output	logic [AMBA_WORD-1:0]			prdata,
	
	/////////////////////////////
	
	output	logic [AMBA_WORD-1:0]			ctrl,
	output	logic [AMBA_WORD-1:0]			data_in,
	output	logic [AMBA_WORD-1:0]			codeword_width,
	output	logic [AMBA_WORD-1:0]			noise
	
	);
	
	logic [3:0]				reg_sel;
	logic [AMBA_WORD-1:0]	read_reg;
	
	
	
	//TODO : think if we need to check other addr bits to make shure cpu refers to our block
	
	always_comb reg_sel[0] = ~|paddr;
	always_comb reg_sel[1] = paddr[2] & ~paddr[3];
	always_comb reg_sel[2] = paddr[3] & ~paddr[2];
	always_comb reg_sel[3] = paddr[2] & paddr[3];

	always_ff @ (posedge clk or negedge rstn) begin
		if(~rstn)
			ctrl <= {AMBA_WORD{1'b0}};
		else if (regs_wr_en && reg_sel[0])
			ctrl <= pwdata;
	end
	
	always_ff @ (posedge clk or negedge rstn) begin
		if(~rstn)
			data_in <= {AMBA_WORD{1'b0}};
		else if (regs_wr_en && reg_sel[1])
			data_in <= pwdata;
	end
	
	always_ff @ (posedge clk or negedge rstn) begin
		if(~rstn)
			codeword_width <= {AMBA_WORD{1'b0}};
		else if (regs_wr_en && reg_sel[2])
			codeword_width <= pwdata;
	end
	
	always_ff @ (posedge clk or negedge rstn) begin
		if(~rstn)
			noise <= {AMBA_WORD{1'b0}};
		else if (regs_wr_en && reg_sel[3])
			noise <= pwdata;
	end
	
	always_comb begin
		if(regs_rd_en) begin
			case (paddr[3:2])
				2'b00	:	read_reg = ctrl;
				2'b01	:	read_reg = data_in;
				2'b10	:	read_reg = codeword_width;
				2'b11	:	read_reg = noise;
			endcase
		end
		else if(~rstn)
			read_reg = {AMBA_WORD{1'b0}};
	end

	assign prdata = read_reg;

endmodule