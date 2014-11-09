module computer(
	input clk,
	output [7:0] led
	);

	wire memory_read;
	wire memory_write;
	wire [15:0] d_addr;
	wire [15:0] i_addr;
	wire [15:0] i_bus;
	wire [15:0] d_bus;
	
	memory mem (
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

endmodule
