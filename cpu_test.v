`timescale 1ns / 1ps

module test_memory(
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
	reg [15:0] d_mem;
	assign d_bus = read ? d_mem : 16'bz;

	initial begin
		mem[ 2] = 16'b0000000000010111;
	
		mem[16] = 16'b1111111100010000; // Ldl r0
		mem[17] = 16'b0000000000000000; // Literal
		mem[18] = 16'b1111111100010001; // Ldl r1
		mem[19] = 16'b0000000000010101; // Literal
		mem[20] = 16'b1111111100110000; // Setf r0
		mem[21] = 16'b1111001111110001; // jmp r1
		mem[22] = 16'b0000000000000000; // nothing
		mem[23] = 16'b1111111101100011; // Read interrupts.
		mem[24] = 16'b1111100100100000; // IOO 2, r0
		mem[25] = 16'b1111111111110001; // ret interrupt.
		
	end
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		d_mem <= mem[d_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule

module cpu_test;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] led;
	wire mem_read;
	wire mem_write;
	wire io_read;
	wire io_write;
	wire io_push;
	wire io_store_retaddr;
	wire io_push_retaddr;
	wire io_push_ints;
	wire io_interrupt;
	wire [15:0] d_addr;
	wire [15:0] i_addr;
	wire [15:0] i_bus;
	wire lcd_rs, lcd_rw, lcd_e;
	wire [3:0] sf_d;

	// Bidirs
	wire [15:0] d_bus;

	test_memory mem (
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
		.push_ints(io_push_ints),
		.store_retaddr(io_store_retaddr),
		.push_retaddr(io_push_retaddr),
		.push_int_addr(io_push_int_addr),
		.interrupt(io_interrupt),
		.d_addr(d_addr),
		.d_bus(d_bus),
		.led(led),
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_e(lcd_e),
		.lcd_d(sf_d)
	);

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.mem_read(mem_read),
		.mem_write(mem_write),
		.io_read(io_read),
		.io_write(io_write),
		.io_push(io_push),
		.i_bus(i_bus), 
		.d_bus(d_bus), 
		.d_addr(d_addr), 
		.i_addr(i_addr),
		.io_store_retaddr(io_store_retaddr),
		.io_push_retaddr(io_push_retaddr),
		.io_push_ints(io_push_ints),
		.io_push_int_addr(io_push_int_addr),
		.io_interrupt(io_interrupt)
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
