`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module enc_parity_tb;

    reg[25:0] data_in32;
	reg[10:0] data_in16;
	reg[3:0] data_in8;
	wire[5:0] parity32;
	wire[4:0] parity16;
	wire[3:0] parity8;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  

    enc_parity_32 P32 (.data_in(data_in32), .parity_32(parity32));
	enc_parity_16 P16 (.data_in(data_in16), .parity_16(parity16));
	enc_parity_8 P8 (.data_in(data_in8), .parity_8(parity8));
    
    initial // initial block executes only once
        begin
            // values for a and b
            data_in32 = 26'b0;
			data_in16 = 11'b0;
			data_in8 = 4'b0;
            #period; // wait for period 

            data_in32 = 26'b10101010101010101010101010; // output should be 101010
			data_in16 = 11'b10101010101;
			data_in8 = 4'b1010;
			
			
            #period;

        end
endmodule