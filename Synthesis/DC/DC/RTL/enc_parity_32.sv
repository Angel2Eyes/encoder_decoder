module enc_parity_32 (en, data_in, parity_16, parity_32);

	input				en;
	input 	[14:0] 		data_in;
	input	[4:0]		parity_16;
	output 	reg[5:0]	parity_32;
						
	always @ (*) begin
		if(en)
		begin
			parity_32[5] <= ^data_in[13:12] ^ data_in[10] ^ ^data_in[7:6] ^ data_in[3] ^ ^data_in[1:0] ^ parity_16[4];
			parity_32[4] <= ^data_in;
			parity_32[3] <= ^data_in[14:7] ^ parity_16[3];
			parity_32[2] <= ^data_in[14:11] ^ ^data_in[6:3] ^ parity_16[2];
			parity_32[1] <= ^data_in[14:13] ^ ^data_in[10:9] ^ ^data_in[6:5] ^ ^data_in[2:1] ^ parity_16[1];
			parity_32[0] <= data_in[14] ^ data_in[12] ^ data_in[10] ^ data_in[8] ^ data_in[6]  ^ data_in[4] ^ data_in[2] ^ data_in[0] ^ parity_16[0];
		end
		else
			parity_32 <= 6'b000000;
	end
endmodule