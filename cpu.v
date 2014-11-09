module cpu(
	input clk,
	output [7:0] led
	);

	wire [15:0] d_addr, d_bus, i_addr, i_bus, r_bus, f_bus;

	wire memory_read, memory_write;
	wire pc_increment, pc_load;
	wire cmp_load, cmp_compare;
	
	wire reg1_read, reg2_read, reg3_write;
	wire [3:0] reg1_addr, reg2_addr, reg3_addr;
	
	memory memory (
		.clk(clk),
		.read(memory_read),
		.write(memory_write),
		
		.d_addr(d_addr),
		.d_bus(d_bus),
		.i_addr(i_addr),
		.i_bus(i_bus)
	);

	register_file register_file (
		.clk(clk),
		.reg1_read(reg1_read),
		.reg2_read(reg2_read),
		.reg3_read(reg3_read),
		
		.reg1_addr(reg1_addr),
		.reg2_addr(reg2_addr),
		.reg3_addr(reg3_addr),
		
		.reg1_bus(r_bus),
		.reg2_bus(d_addr),
		.reg3_bus(d_bus)
	);

	program_counter program_counter (
		.clk(clk),
		.increment(pc_increment),
		.load(pc_load),
		
		.i_addr(i_addr),
		.d_bus(d_bus)
	);
	
	comparator comparator (
		.clk(clk),
		.load(cmp_load),
		.compare(cmp_compare),
		
		.bus1(r_bus),
		.bus2(d_addr),
		.flags(f_bus)
	);
endmodule
