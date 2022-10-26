module sr_ff_test;
	reg [1:0] sr;
	reg clk;
	wire q,qbar;

	sr_ff FF_INST(sr,clk,q,qbar);
	always
	#5 clk = ~clk;
	
	initial 
	begin
	  clk = 0;
	$display("sr flip flop");
	$monitor("%b  %b %b \t %b %b",sr[1],sr[0],clk, q,qbar);
		sr = 2'b00;
		#10

		sr = 2'b01;
		#10

		sr = 2'b10;
		#10
		sr = 2'b00;
		#10
		sr = 2'b11;
		#10
	$stop;
	end
endmodule
