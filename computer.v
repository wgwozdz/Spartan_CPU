module computer(
	input clk,
	output [7:0] led
	);

	wire mem_read;
	wire mem_write;
	wire [15:0] d_addr;
	wire [15:0] i_addr;
	wire [15:0] i_bus;
	wire [15:0] d_bus;
	
	memory mem (
		.clk(clk),
		.read(mem_read),
		.write(mem_write),
		.i_bus(i_bus), 
		.d_bus(d_bus), 
		.d_addr(d_addr), 
		.i_addr(i_addr)
	);

	// Instantiate the Unit Under Test (UUT)
	cpu cpu (
		.clk(clk), 
		.led(led), 
		.mem_read(mem_read), 
		.mem_write(mem_write), 
		.i_bus(i_bus), 
		.d_bus(d_bus), 
		.d_addr(d_addr), 
		.i_addr(i_addr)
	);

endmodule
