module cpu(
	input clk,
	output [7:0] led,
	
	// Memory interface
	output memory_read,
	output memory_write,
	input [15:0] i_bus,
	inout [15:0] d_bus,
	output [15:0] d_addr,
	output [15:0] i_addr
	);

	wire [15:0] r_bus, f_bus;

	wire pc_increment, pc_load;
	wire cmp_load, cmp_compare;
	wire lu_passthrough, lu_add, lu_sub, lu_shr, lu_shl, lu_band, lu_bor, lu_bxor, lu_bnegate;
	wire reg1_read, reg2_read, reg3_write;
	wire [3:0] reg1_addr, reg2_addr, reg3_addr;
	
	assign led = f_bus[15:8];

	register_file register_file (
		.clk(clk),
		.reg1_read(reg1_read),
		.reg2_read(reg2_read),
		.reg3_write(reg3_write),
		
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
	
	logic_unit logic_unit (
		.passthrough(lu_passthrough),
		.add(lu_add),
		.sub(lu_sub),
		.shr(lu_shr),
		.shl(lu_shl),
		.band(lu_band),
		.bor(lu_bor),
		.bxor(lu_bxor),
		.bnegate(lu_bnegate),
		
		.bus1(r_bus),
		.bus2(d_addr),
		.bus3(d_bus)
	);
	
	control_unit control_unit (
		.clk(clk),
		
		.mem_read(memory_read),
		.mem_write(memory_write),
		
		.pc_increment(pc_increment),
		.pc_load(pc_load),
		
		.cmp_load(cmp_load),
		.cmp_compare(cmp_compare),
		
		.lu_passthrough(lu_passthrough),
		.lu_add(lu_add),
		.lu_sub(lu_sub),
		.lu_shr(lu_shr),
		.lu_shl(lu_shl),
		.lu_band(lu_band),
		.lu_bor(lu_bor),
		.lu_bxor(lu_bxor),
		.lu_bnegate(lu_bnegate),
	
		.reg1_read(reg1_read),
		.reg2_read(reg2_read),
		.reg3_write(reg3_write),
		.reg1_addr(reg1_addr),
		.reg2_addr(reg2_addr),
		.reg3_addr(reg3_addr),
	
		.i_bus(i_bus),
		.flags(f_bus),
		.d_bus(d_bus)
	);
	
endmodule
