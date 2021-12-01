`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module enc_dec_top_tb;

	logic							clk = 1;
	logic							rst = 0;
	
	logic [32-1:0]					paddr;
	logic [32-1:0]					pwdata;
	logic							penable;
	logic							psel;
	logic							pwrite;
	
	logic [32-1:0]					prdata;
	logic [16-1:0]					data_out;
	
	logic							operation_done;	//TODO
	logic [1:0]						num_of_errors;	//TODO

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 40;  

    ECC_ENC_DEC 
	#(
	.AMBA_ADDR_WIDTH(32),
	.AMBA_WORD(32),
	.DATA_WIDTH(16)
	)
	top (
		.clk(clk),
		.rst(rst),
		.paddr(paddr),
		.pwdata(pwdata),
		.penable(penable),
		.psel(psel),
		.pwrite(pwrite),
		.prdata(prdata),
		.data_out(data_out),
		.operation_done(operation_done),	
		.num_of_errors(num_of_errors)
		
		);
    
	always 
		begin
			#20 clk = ~clk;
		end
    initial // initial block executes only once
        begin
			#period rst = 1;
			#period;
			
			// data input is 32'b00000010101010101010101010101010
			paddr = 32'h00000004;
			pwrite = 1'b1;
			psel = 1'b1;
			//pwdata = 32'b10101010101010101010101010101010; // output should be 101010
			pwdata = 32'b10101010101010101010101010101010; // output should be 101010
			
			#period;
			penable = 1'b1;
			
			
			#period;
			psel = 1'b0;
			penable = 1'b0;
			
			#period;
			
			// set codeword width to be 0(00)
			paddr = 32'h00000008;
			pwrite = 1'b1;
			psel = 1'b1;
			pwdata = 32'h00000001; 
			
			#period;
			penable = 1'b1;
			
			#period;
			psel = 1'b0;
			penable = 1'b0;
			
			#period;
			
			// set noise to be on 1 LSB bits
			paddr = 32'h0000000C;
			pwrite = 1'b1;
			psel = 1'b1;
			pwdata = 32'h00000001; 
			
			#period;
			penable = 1'b1;
			
			#period;
			psel = 1'b0;
			penable = 1'b0;
			
			// tell control to start full channel operation
			#period;
			paddr = 32'h00000000;
			pwrite = 1'b1;
			psel = 1'b1;
			pwdata = 32'h00000002;
			
			#period;
			penable = 1'b1;
			

			#period;
			psel = 1'b0;
			penable = 1'b0;
			// by now start should change to '1'
			
			#period;
			#period;
			
			// by now flagClock2 should change to '1' and also operation_done
					
			#period;
			// tell control to start decoder operation
			paddr = 32'h00000000;
			pwrite = 1'b1;
			psel = 1'b1;
			pwdata = 32'h00000001;
			
			#period;
			penable = 1'b1;
			
			
			#period;
			psel = 1'b0;
			penable = 1'b0;
			// by now start should change to '1'
			
			#period;
			
			// by now flagClock1 should change to '1' and also operation_done
			
			#period;
			
			// tell control to start encoder operation
			paddr = 32'h00000000;
			pwrite = 1'b1;
			psel = 1'b1;
			pwdata = 32'h00000000;
			
			#period;
			penable = 1'b1;
						
			#period;
			psel = 1'b0;
			penable = 1'b0;
			// by now start should change to '1'
			
			////////////////////////
			#period;
			// by now flagClock1 should change to '1' and also operation_done
			
			#period;
			paddr = 32'h00000004;
			pwrite = 1'b0;
			psel = 1'b1;
			pwdata = 32'hXXXXXXXX;
			
			#period;
			penable = 1'b1;
			
			
			#period;
			psel = 1'b0;
			penable = 1'b0;
			
			
			

			
			
			

        end
endmodule