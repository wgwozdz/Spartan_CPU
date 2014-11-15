module computer(
	input clk,
	output [7:0] led,
	output lcd_rs,
	output lcd_rw,
	output lcd_e,
	output [11:8] sf_d
	);

	wire mem_read;
	wire mem_write;
	wire io_read;
	wire io_write;
	wire io_push;
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

	io_bridge io_bridge (
		.clk(clk),
		.read(io_read),
		.write(io_write),
		.push(io_push),
		.d_addr(d_addr),
		.d_bus(d_bus),
		.led(led),
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_e(lcd_e),
		.lcd_d(sf_d)
	);

	cpu cpu (
		.clk(clk), 
		.mem_read(mem_read),
		.mem_write(mem_write),
		.io_read(io_read),
		.io_write(io_write),
		.io_push(io_push),
		.i_bus(i_bus), 
		.d_bus(d_bus), 
		.d_addr(d_addr), 
		.i_addr(i_addr)
	);

endmodule
