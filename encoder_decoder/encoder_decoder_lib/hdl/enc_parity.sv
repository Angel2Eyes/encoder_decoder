module enc_parity # ( AMBA_WORD = 32)(CODEWORD_WIDTH, data_in, parity);

	parameter MAX_PARITY_WIDTH = 6;
	
	input 	[1:0] 				CODEWORD_WIDTH,
	input 	[AMBA_WORD - 1:0] 	data_in;
	
	output 	reg[MAX_PARITY_WIDTH - 1:0]	parity;
	
	wire[3:0]	parity8;
	wire[4:0]	parity16;
	wire[5:0]	parity32;
	
	enc_parity_32 P32 (.en(CODEWORD_WIDTH[1]),.data_in(data_in32[25:11]), .parity_16(parity16), .parity_32(parity32));
	enc_parity_16 P16 (.en(CODEWORD_WIDTH[0]), .data_in(data_in[10:4]), .parity_8(parity8), .parity_16(parity16));
	enc_parity_8 P8 (.data_in(data_in[3:0]), .parity_8(parity8));
	
	always @ (*) begin
		case(CODEWORD_WIDTH)
			2'b00 	:	parity = {2'b00,parity8};
			2'b01 	:	parity = {1'b0,parity16};
			2'b01 	: 	parity = parity32;
			default : 	parity = {2'b00,parity8};
		endcase
	end
endmodule