module io_bridge(
	input clk,
	input read,
	input write,
	input push,
	input push_ints,
	input push_int_addr,
	output interrupt,
	input store_retaddr,
	input push_retaddr,
	inout [15:0] d_addr,
	inout [15:0] d_bus,
	
	// Output pins
	output [7:0] led,
	output lcd_rs,
	output lcd_rw,
	output lcd_e,
	output [7:4] lcd_d,
	inout ps2_clk,
	inout ps2_data
	);

	reg [15:0] retaddr;
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
	
	wire key_read, key_write, key_interrupt;
	wire [15:0] key_in, key_out;
	keyboard_driver key (
		.clk(clk),
		.read(key_read),
		.write(key_write),
		.interrupt(key_interrupt),
		.in_bus(key_in),
		.out_bus(key_out),
		
		.ps2_clk(ps2_clk),
		.ps2_data(ps2_data)
	);
	
	wire [15:0] interrupts;
	wire [15:0] int_addr;
	assign interrupt = (interrupts != 0);
	assign int_addr =
		interrupts[ 0] ?  16'd0 :
		interrupts[ 1] ?  16'd1 :
		interrupts[ 2] ?  16'd2 :
		interrupts[ 3] ?  16'd3 :
		interrupts[ 4] ?  16'd4 :
		interrupts[ 5] ?  16'd5 :
		interrupts[ 6] ?  16'd6 :
		interrupts[ 7] ?  16'd7 :
		interrupts[ 8] ?  16'd8 :
		interrupts[ 9] ?  16'd9 :
		interrupts[10] ? 16'd10 :
		interrupts[11] ? 16'd11 :
		interrupts[12] ? 16'd12 :
		interrupts[13] ? 16'd13 :
		interrupts[14] ? 16'd14 :
		interrupts[15] ? 16'd15 :
		16'd0;
	assign d_bus = 
		push ? out_store : 
		push_retaddr ? retaddr :
		push_ints ? interrupts :
		16'bz;
		
	assign d_addr = 
		push_int_addr ? int_addr :
		16'bz;

	// Wire output to IOs
	assign out_store = 
	d_addr[ 0] ? led_out :
	d_addr[ 1] ? lcd_out :
	d_addr[ 2] ? key_out :
	16'bz0;

	// Wire IOs to inputs
	assign {led_read, led_write, led_in} = d_addr[ 0] ? {read, write, d_bus} : 0;
	assign {lcd_read, lcd_write, lcd_in} = d_addr[ 1] ? {read, write, d_bus} : 0;
	assign {key_read, key_write, key_in} = d_addr[ 2] ? {read, write, d_bus} : 0;

	// Wire interrupts
	assign interrupts[ 0] = 0;
	assign interrupts[ 1] = 0;
	assign interrupts[ 2] = key_interrupt;
	assign interrupts[ 3] = 0;
	assign interrupts[ 4] = 0;
	assign interrupts[ 5] = 0;
	assign interrupts[ 6] = 0;
	assign interrupts[ 7] = 0;
	assign interrupts[ 8] = 0;
	assign interrupts[ 9] = 0;
	assign interrupts[10] = 0;
	assign interrupts[11] = 0;
	assign interrupts[12] = 0;
	assign interrupts[13] = 0;
	assign interrupts[14] = 0;
	assign interrupts[15] = 0;

	always @ (posedge clk) begin
		if (store_retaddr) begin
			retaddr <= d_bus;
		end

	end
endmodule
