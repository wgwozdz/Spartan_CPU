`timescale 1ns / 1ps

module two_op_memory(
	input clk,

	// Control
	input read,
	input write,

	// Buses
	input      [15:0] d_addr,
	input      [15:0] i_addr,
	inout      [15:0] d_bus,
	output reg [15:0] i_bus
	);

	reg [15:0] mem [65535:0];
	assign d_bus = read ? mem[d_addr] : 16'bz;

	initial begin
		mem[0] = 16'b1111111100011010; // Load literal
		mem[1] = 16'b1010101010101010; // Literal
		mem[2] = 16'b1111111100111010; // Setf a
		mem[3] = 16'b1111111100101111; // Getf f
		mem[4] = 16'b1111111100111111; // Setf f
		mem[5] = 16'b1111000111111110; // Mov f,e
		mem[6] = 16'b1111111100111110; // Setf e
	end
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule

module two_op_cpu_test;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] led;
	wire memory_read;
	wire memory_write;
	wire [15:0] d_addr;
	wire [15:0] i_addr;
	wire [15:0] i_bus;

	// Bidirs
	wire [15:0] d_bus;

	two_op_memory mem (
		.clk(clk),
		.read(memory_read),
		.write(memory_write),
		.i_bus(i_bus), 
		.d_bus(d_bus), 
		.d_addr(d_addr), 
		.i_addr(i_addr)
	);

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.led(led), 
		.memory_read(memory_read), 
		.memory_write(memory_write), 
		.i_bus(i_bus), 
		.d_bus(d_bus), 
		.d_addr(d_addr), 
		.i_addr(i_addr)
	);

	always
		#1 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#1000; // wait for cpu to process.
		$display("Leds are %d, expected %d.", led, 170);
		$finish;
	end
      
endmodule

