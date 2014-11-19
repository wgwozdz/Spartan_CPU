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
	input [15:0] d_addr,
	inout [15:0] d_bus,
	
	// Output pins
	output [7:0] led,
	output lcd_rs,
	output lcd_rw,
	output lcd_e,
	output [7:4] lcd_d
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
	
	wire tio_read, tio_write, tio_interrupt;
	wire [15:0] tio_in, tio_out;
	test_io tio (
		.clk(clk),
		.read(tio_read),
		.write(tio_write),
		.interrupt(tio_interrupt),
		.in_bus(tio_in),
		.out_bus(tio_out)
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
		0;
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
	d_addr[0] ? led_out :
	d_addr[1] ? lcd_out :
	d_addr[2] ? tio_out :
	16'bz0;

	// Wire IOs to inputs
	assign {led_read, led_write, led_in} = d_addr[0] ? {read, write, d_bus} : 0;
	assign {lcd_read, lcd_write, lcd_in} = d_addr[1] ? {read, write, d_bus} : 0;
	assign {tio_read, tio_write, tio_in} = d_addr[2] ? {read, write, d_bus} : 0;

	// Wire interrupts
	assign interrupts[0] = 0;
	assign interrupts[1] = 0;
	assign interrupts[2] = tio_interrupt;

	always @ (posedge clk) begin
		if (store_retaddr) begin
			retaddr <= d_bus;
		end
		/*if (mask) begin
			masks <= masks | d_bus;
		end else if (unmask) begin
			masks <= masks & ~d_bus;
		end*/
	end
endmodule

module test_io (
	input clk,
	input read,
	input write,
	output reg interrupt = 1,
	input [15:0] in_bus,
	output reg [15:0] out_bus = 0
	);
	
	always @ (posedge clk) begin
		if (read) begin
			out_bus <= 37;
		end
		if (write) begin
			interrupt <= 0;
		end
	end
	
endmodule
