module enc_parity_16 (en, data_in, parity_8, parity_16);
						
	input				en;
	input 	[6:0] 		data_in;
	input	[3:0]		parity_8;
	output 	reg[4:0]	parity_16;
						
	//enc_parity_8 P8 (.data_in(data_in[3:0]), .parity(parity8));
	
	always @ (*) begin
		if(en)
		begin
			parity_16[4] <= parity_8[3] ^ ^data_in[1:0] ^ data_in[3] ^ data_in[6];
			parity_16[3] <= ^data_in;
			parity_16[2] <= parity_8[2] ^ ^data_in[6:3];
			parity_16[1] <= parity_8[1] ^ ^data_in[2:1] ^ ^data_in[6:5];
			parity_16[0] <= parity_8[0] ^ data_in[0] ^ data_in[2]  ^ data_in[4] ^ data_in[6];
		end
		else
			parity_16 <= 5'b00000;
	end
endmodule