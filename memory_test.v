`timescale 1ns / 1ps

module memory_test;

	// Inputs
	reg clk;
	reg read;
	reg write;

	reg  [15:0] d_addr, d_bus_val, i_addr;
	wire [15:0] d_bus, i_bus;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.clk(clk), 
		.read(read), 
		.write(write),
		.d_addr(d_addr),
		.d_bus(d_bus),
		.i_addr(i_addr),
		.i_bus(i_bus)
	);

	assign d_bus = write ? d_bus_val : 16'bz;

	initial begin
		// Initialize Inputs
		clk = 0;
		read = 0;
		write = 0;
		d_addr = 0;
		i_addr = 0;
		d_bus_val = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		d_bus_val = 16'hdead;
		#1;
		write = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		#1;
		
		write = 0;
		#1;
		if (d_bus != 16'bz) $display("D_Bus not high impedence.");
		d_addr = d_addr + 1;
		#1;
		
		d_bus_val = 16'hdeaf;
		#1;
		write = 1;
		#1;
		clk = 1;
		#1;
		clk = 0;
		#1;
		write = 0;
		#1;
		read = 1;
		#1;
		
		if (i_bus != 16'hdead) $display("I_Bus not expected.");
		if (d_bus != 16'hdeaf) $display("D_Bus not expected.");
		
		$display("Test successful if no messages.");
	end
      
endmodule
