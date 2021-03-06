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
module ECC_ENC_DEC
	#( 	parameter AMBA_ADDR_WIDTH = 32,
		parameter AMBA_WORD = 32,
		parameter DATA_WIDTH = 32)
	(


	input									clk,
	input 									rst,
		
	////////////////////////////	
	//Interface with APB master	
	////////////////////////////	
		
	input	logic [AMBA_ADDR_WIDTH-1:0]		paddr,
	input	logic [AMBA_WORD-1:0]			pwdata,
	input	logic							penable,
	input	logic							psel,
	input	logic							pwrite,
	
	output	logic [AMBA_WORD-1:0]			prdata,
	output	logic [DATA_WIDTH-1:0]			data_out,
	
	/////////////////////////////
	
	output	logic							operation_done,	
	output	logic [1:0]						num_of_errors	
	
	);
	

	
	logic						enc_ena;
	logic						dec_ena;
	logic						dec_in_sel;
	logic						data_out_sel;
	logic [DATA_WIDTH-1:0]		enc_data_out_reg;
	logic [DATA_WIDTH-1:0]		enc_data_out;
	logic [DATA_WIDTH-1:0]		dec_data_out_reg;
	logic [DATA_WIDTH-1:0]		dec_data_out;
	logic [DATA_WIDTH-1:0]		dec_data_in;
	logic [AMBA_WORD-1:0]		ctrl;
	logic [AMBA_WORD-1:0]		data_in;
	logic [AMBA_WORD-1:0]		codeword_width;
	logic [AMBA_WORD-1:0]		noise;
	logic				regs_wr_en;
	
	
	enc_dec_rgf #(.AMBA_ADDR_WIDTH(AMBA_ADDR_WIDTH), .AMBA_WORD(AMBA_WORD))
		u_enc_dec_rgf(
		//inputs
		.clk(clk),
		.rstn(rst),
		
		//apb bus
		.paddr(paddr),
		.pwdata(pwdata),
		.penable(penable),
		.psel(psel),
		.pwrite(pwrite),
		
		.regs_wr_en(regs_wr_en),
	
		//outputs
		.ctrl(ctrl),
		.data_in(data_in),
		.codeword_width(codeword_width),
		.noise(noise),
		
		//apb bus
		.prdata(prdata)
		);
		
	
	enc_dec_ctrl #(.AMBA_ADDR_WIDTH(AMBA_ADDR_WIDTH), .AMBA_WORD(AMBA_WORD))
		u_enc_dec_ctrl(
		//inputs
		.clk(clk),
		.rst(rst),
		
		//apb bus
		.paddr(paddr),
		.regs_wr_en(regs_wr_en),
		
		.ctrl_reg(ctrl),
	
		//outputs
		.enc_ena(enc_ena),
		.dec_ena(dec_ena),
		.dec_in_sel(dec_in_sel),
		.data_out_sel(data_out_sel),
		.operation_done(operation_done)	
		);

	
	encoder #(.DATA_WIDTH(DATA_WIDTH))
		u_encoder(
			.ena(enc_ena),
			.codeword_width(codeword_width[1:0]),
			.data_in(data_in[DATA_WIDTH - 1 : 0]),
			.data_out(enc_data_out)
		);

	decoder #(.DATA_WIDTH(DATA_WIDTH))
		u_decoder(
			.enable(dec_ena),
			.codeword(dec_data_in),
			.codeword_width(codeword_width[1:0]),
			.num_of_errors(num_of_errors),
			.data_out(dec_data_out)
		);
		
	always_ff @ (posedge clk or negedge rst)
	begin
		if(~rst)
			enc_data_out_reg <= {DATA_WIDTH{1'b0}};
		else
			enc_data_out_reg <= enc_data_out;
	end
		
	always_ff @ (posedge clk or negedge rst)
	begin
		if(~rst)
			dec_data_out_reg <= {DATA_WIDTH{1'b0}};
		else
			dec_data_out_reg <= dec_data_out;
	end
	
	assign dec_data_in = dec_in_sel ? (enc_data_out_reg ^ noise[DATA_WIDTH - 1 : 0]) : data_in[DATA_WIDTH - 1 : 0];
	assign data_out = data_out_sel ? dec_data_out_reg : enc_data_out_reg;

endmodule