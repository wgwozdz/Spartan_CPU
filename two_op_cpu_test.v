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
		mem[ 0] = 16'b1111111100010000; // Ldl r0
		mem[ 1] = 16'b1010101010101010; // Literal
		mem[ 2] = 16'b1111111100110000; // Setf r0
		mem[ 3] = 16'b1111111100010001; // Ldl r1
		mem[ 4] = 16'b0000000000010000; // Literal
		mem[ 5] = 16'b1111111100110001; // Setf r1
		mem[ 5] = 16'b1111010100010000; // Stm r1, r0 
		mem[ 6] = 16'b1111011000000010; // Neg r0, r2
		mem[ 7] = 16'b1111111100110010; // Setf r2
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

