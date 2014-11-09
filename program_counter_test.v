`timescale 1ns / 1ps

module program_counter_test;

	// Inputs
	reg clk;
	reg increment;
	reg load;
	reg [15:0] d_bus;

	// Outputs
	wire [15:0] i_addr;

	// Instantiate the Unit Under Test (UUT)
	program_counter uut (
		.clk(clk), 
		.increment(increment), 
		.load(load), 
		.d_bus(d_bus), 
		.i_addr(i_addr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		increment = 0;
		load = 0;
		d_bus = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		load = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		load = 0;
		
		if (i_addr != 0) $display("I Addr is not whats expected.");
		
		increment = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		increment = 0;
		
		if (i_addr != 1) $display("I Addr is not whats expected.");
		
		$display("Test successful if no messages.");
	end
      
endmodule

