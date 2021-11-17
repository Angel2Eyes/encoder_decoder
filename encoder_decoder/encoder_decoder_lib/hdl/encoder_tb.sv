`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module encoder_tb;

	reg[1:0] 	CODEWORD_WIDTH;
    reg[32:0]	data_in;
	
	wire[32:0] 	data_out;
	

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  

    encoder ENC (.CODEWORD_WIDTH(CODEWORD_WIDTH), .data_in(data_in), .data_out(data_out));
    
    initial // initial block executes only once
        begin
            // values for a and b
			CODEWORD_WIDTH = 2'b00;
            data_in = 32'h0;
            #period; // wait for period 

            data_in = 32'b00000010101010101010101010101010; // output should be 101010
			
			#period; // wait for period 
			
			CODEWORD_WIDTH = 2'b01;
			
			#period; // wait for period 
			
			CODEWORD_WIDTH = 2'b10;
			
			
            #period;

        end
endmodule