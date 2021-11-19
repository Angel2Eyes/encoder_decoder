`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module controller_tb;

	logic							clk = 1;
	logic							rst = 1;
	
	logic [32-1:0]					paddr;
	logic [32-1:0]					pwdata;
	logic							penable;
	logic							psel;
	logic							pwrite;
	
	logic [32-1:0]					prdata;
	
	logic							enc_ena;
	logic							dec_ena;
	logic							dec_in_sel;
	logic							data_out_sel;
	logic							operation_done;	//TODO
	logic							num_of_errors;	//TODO
	logic							data_in;
	logic							codeword_width;
    logic							noise;
    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 40;  

    enc_dec_ctrl CTRL (
		.clk(clk),
		.rst(rst),
		.paddr(paddr),
		.pwdata(pwdata),
		.penable(penable),
		.psel(psel),
		.pwrite(pwrite),
		.prdata(prdata),
		.enc_ena(enc_ena),
		.dec_ena(dec_ena),
		.dec_in_sel(dec_in_sel),
		.data_out_sel(data_out_sel),
		.operation_done(operation_done),	
		.num_of_errors(num_of_errors),
		.data_in(data_in),
		.codeword_width(codeword_width),
		.noise(noise)
		
		);
    
	always 
		begin
			#20 clk = ~clk;
		end
    initial // initial block executes only once
        begin
			#period rst = 0;
			#period;
			
			paddr = 32'h00000004;
			pwrite = 1'b1;
			psel = 1'b1;
			pwdata = 32'h00001234;
			
			#period;
			penable = 1'b1;
			
			
			#period
			psel = 1'b0;
			penable = 1'b0;
			
			#period
			paddr = 32'h00000000;
			psel = 1'b1;
			pwdata = 32'h00000002;
			
			#period;
			penable = 1'b1;
			
			
			#period
			psel = 1'b0;
			penable = 1'b0;
			
			#period
			paddr = 32'h00000000;
			psel = 1'b1;
			pwdata = 32'h00000001;
			
			#period;
			penable = 1'b1;
			
			
			#period
			psel = 1'b0;
			penable = 1'b0;
			
			#period
			paddr = 32'h00000000;
			psel = 1'b1;
			pwdata = 32'h00000000;
			
			#period;
			penable = 1'b1;
						
			#period
			psel = 1'b0;
			penable = 1'b0;
			
			////////////////////////
			#period
			paddr = 32'h00000004;
			pwrite = 1'b0;
			psel = 1'b1;
			
			#period;
			penable = 1'b1;
			
			
			#period
			psel = 1'b0;
			penable = 1'b0;
			
			

        end
endmodule