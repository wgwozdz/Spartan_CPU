module io_bridge(
	input clk,
	input read,
	input write,
	input push,
	input [15:0] d_addr,
	inout [15:0] d_bus,
	
	// Output pins
	output [7:0] led,
	output lcd_rs,
	output lcd_rw,
	output lcd_e,
	output [7:4] lcd_d
	);

	wire [15:0] out_store;
	
	wire led_read, led_write;
	wire [15:0] led_in, led_out;
	led_driver led_driver (
		.clk(clk),
		.read(led_read),
		.write(led_write),
		.in_bus(led_in),
		.out_bus(led_out),
		.led(led)
	);
	
	wire lcd_read, lcd_write;
	wire [15:0] lcd_in, lcd_out;
	lcd_driver lcd_driver (
		.clk(clk),
		.read(lcd_read),
		.write(lcd_write),
		.in_bus(lcd_in),
		.out_bus(lcd_out),
		
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_e(lcd_e),
		.lcd_d(lcd_d)
	);

	assign d_bus = push ? out_store : 16'bz;

	// Wire output to IOs
	assign out_store = 
	d_addr[0] ? led_out :
	d_addr[1] ? lcd_out :
	16'bz0;

	// Wire IOs to inputs
	assign {led_read, led_write, led_in} = d_addr[0] ? {read, write, d_bus} : 0;
	assign {lcd_read, lcd_write, lcd_in} = d_addr[1] ? {read, write, d_bus} : 0;

endmodule
