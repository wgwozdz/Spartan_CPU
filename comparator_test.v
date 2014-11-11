`timescale 1ns / 1ps

module comparator_test;

	// Inputs
	reg clk;
	reg compare;
	reg load;
	reg [15:0] bus1;
	reg [15:0] bus2;

	// Outputs
	wire [15:0] flags;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.clk(clk), 
		.compare(compare), 
		.load(load), 
		.bus1(bus1), 
		.bus2(bus2), 
		.flags(flags)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		compare = 0;
		load = 0;
		bus1 = 0;
		bus2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		load = 1;
		clk = 1;
		#1;
		clk = 0;
		#1;
		load = 0;
		#1;
		
		bus1 = 0;
		bus2 = 0;
		compare = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		compare = 0;
		#1;
		if (flags[1:0] != 2'b01) begin $display("Flags not expected."); $display(flags[1:0]); end
		
		bus1 = 1;
		bus2 = 0;
		compare = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		compare = 0;
		#1;
		if (flags[1:0] != 2'b10) begin $display("Flags not expected."); $display(flags[1:0]); end
		
		bus1 = 0;
		bus2 = 1;
		compare = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		compare = 0;
		#1;
		if (flags[1:0] != 2'b00) begin $display("Flags not expected."); $display(flags[1:0]); end
		
		$display("Test successful if no messages.");
	end
      
endmodule

