module enc_parity_8 (data_in, parity_8);
					
	input 	[3:0] 		data_in;
	output 	reg[3:0]	parity_8;
	
	always @ (data_in) begin
		parity_8[3] <= ^data_in[2:0];
		parity_8[2] <= ^data_in[3:1];
		parity_8[1] <= data_in[0] ^ ^data_in[3:2];
		parity_8[0] <= ^data_in[1:0] ^ data_in[3];
	end
endmodule