`timescale 1ns / 1ps

module memory_test;

	// Inputs
	reg clk;
	reg d_read;
	reg d_write;
	reg d_push;
	reg i_read;
	reg i_push;
	reg [15:0] d_addr;
	reg [15:0] i_addr;

	// Bidirs
	wire [15:0] d_bus;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.clk(clk), 
		.d_read(d_read), 
		.d_write(d_write), 
		.d_push(d_push), 
		.i_read(i_read), 
		.i_push(i_push), 
		.d_addr(d_addr), 
		.i_addr(i_addr), 
		.d_bus(d_bus)
	);

	always
		#1 clk = ~clk;
		
	reg [15:0] d_bus_back;
	
	assign d_bus = d_write ? d_bus_back : 16'bz;

	initial begin
		// Initialize Inputs
		clk = 0;
		d_read = 0;
		d_write = 0;
		d_push = 0;
		i_read = 0;
		i_push = 0;
		d_addr = 0;
		i_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d_addr <= 3;
		d_bus_back <= 47;
		d_write <= 1;
		
		#2;
		
		$display("d_bus is writing? %d", d_bus);
		
		#2; // extra time for d_bus to write?
		
		d_write <= 0;
		d_read <= 1;
		
		#2;
		
		#2 // extra time for d_bus to read?
		
		d_read <= 0;
		d_push <= 1;
		
		#2;
		
		$display("d_bus is %d", d_bus);
		
		#2;
		
		d_read <= 1;
		d_push <= 1;
		#10;
		$display("d_bus is %d", d_bus);
		
		$finish;

	end
      
endmodule

