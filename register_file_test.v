`timescale 1ns / 1ps

module register_file_test;

	// Inputs
	reg clk;
	reg reg1_read;
	reg reg2_read;
	reg reg3_write;
	reg [3:0] reg1_addr;
	reg [3:0] reg2_addr;
	reg [3:0] reg3_addr;
	reg [15:0] reg3_bus;

	// Outputs
	wire [15:0] reg1_bus, reg2_bus;

	// Local variables
	reg [4:0] i;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.clk(clk), 
		.reg1_read(reg1_read), 
		.reg2_read(reg2_read), 
		.reg3_write(reg3_write), 

		.reg1_addr(reg1_addr), 
		.reg2_addr(reg2_addr), 
		.reg1_bus(reg1_bus),
		.reg2_bus(reg2_bus),
		
		.reg3_addr(reg3_addr),
		.reg3_bus(reg3_bus)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reg1_read = 0;
		reg2_read = 0;
		reg3_write = 0;
		reg1_addr = 0;
		reg2_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 16; i= i + 1) begin
			reg3_addr = i;
			reg3_bus = i;
			#1;
			reg3_write = 1;
			#1;
			clk = 1;
			#1;
			clk = 0;
		end
		
		if (reg1_bus != 16'bz) $display("Reg 1 impedence");
		if (reg2_bus != 16'bz) $display("Reg 2 impedence");
		
		for (i = 0; i < 16; i= i + 1) begin
			reg1_addr = i;
			reg2_addr = i;
			reg1_read = 1;
			reg2_read = 1;
			#1;
			if (reg1_bus != i) $display("Reg 1 mismatch");
			if (reg2_bus != i) $display("Reg 2 mismatch");
		end
		
		$display("Test successful if no messages.");
	end
		
endmodule

