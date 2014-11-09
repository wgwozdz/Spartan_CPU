`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:48:29 11/09/2014
// Design Name:   logic_unit
// Module Name:   C:/Users/Public/Documents/FPGA/CPU/logic_unit_test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: logic_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module logic_unit_test;

	// Inputs
	reg passthrough;
	reg add;
	reg sub;
	reg shr;
	reg shl;
	reg band;
	reg bor;
	reg bxor;
	reg bnegate;
	reg [15:0] bus1;
	reg [15:0] bus2;

	// Outputs
	wire [15:0] bus3;

	// Instantiate the Unit Under Test (UUT)
	logic_unit uut (
		.passthrough(passthrough), 
		.add(add), 
		.sub(sub), 
		.shr(shr), 
		.shl(shl), 
		.band(band), 
		.bor(bor), 
		.bxor(bxor), 
		.bnegate(bnegate), 
		
		.bus1(bus1), 
		.bus2(bus2), 
		.bus3(bus3)
	);

	initial begin
		// Initialize Inputs
		passthrough = 0;
		add = 0;
		sub = 0;
		shr = 0;
		shl = 0;
		band = 0;
		bor = 0;
		bxor = 0;
		bnegate = 0;
		bus1 = 3;
		bus2 = 2;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here

		if (bus3 != 16'bz) $display("Bus not expected.");
		
		passthrough = 1;
		#1;
		if (bus3 != 3) $display("Bus not expected.");
		passthrough = 0;
		
		add = 1;
		#1;
		if (bus3 != 5) $display("Bus not expected.");
		add = 0;
		
		sub = 1;
		#1;
		if (bus3 != 1) $display("Bus not expected.");
		sub = 0;
		
		$display("Test successful if no messages.");
	end
      
endmodule

