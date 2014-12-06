module cpu(
	input clk,
	
	// Memory interface
	output i_read,
	output i_push,
	output d_read,
	output d_push,
	output d_write,
	
	// IO interface
	output io_read,
	output io_write,
	output io_push,
	output io_store_retaddr,
	output io_push_retaddr,
	output io_push_ints,
	output io_push_int_addr,
	input  io_interrupt,
	
	// Buses
	inout  [15:0] d_bus,
	output [15:0] d_addr,
	output [15:0] i_addr
	);

	wire [2:0] f_bus; // Expand as necessary.
	wire [15:0] r_bus, s_bus;

	wire pc_increment, pc_load, pc_push;
	wire cmp_load, cmp_push, cmp_compare, cmp_mask_int, cmp_unmask_int;
	wire lu_passh, lu_passl, lu_pass_high, lu_push, lu_push_high, lu_add, lu_sub, lu_mul, lu_inc, lu_dec,
		  lu_shr, lu_shl, lu_band, lu_bor, lu_bxor, lu_bnegate;
	wire reg3_write, reg4_write;
	wire [3:0] reg1_addr, reg2_addr, reg3_addr, reg4_addr;
	wire io_addr_read;
	wire [3:0] io_addr;

	register_file register_file (
		.clk(clk),
		.reg3_write(reg3_write),
		.reg4_write(reg4_write),
		
		.reg1_addr(reg1_addr),
		.reg2_addr(reg2_addr),
		.reg3_addr(reg3_addr),
		.reg4_addr(reg4_addr),
		
		.reg1_bus(r_bus),
		.reg2_bus(s_bus),
		.reg3_bus(d_bus),
		.reg4_bus(d_addr)
	);

	program_counter program_counter (
		.clk(clk),
		.increment(pc_increment),
		.load(pc_load),
		.push(pc_push),
		
		.i_addr(i_addr),
		.d_addr(d_addr),
		.d_bus(d_bus)
	);
	
	comparator comparator (
		.clk(clk),
		.load(cmp_load),
		.push(cmp_push),
		.compare(cmp_compare),
		.mask_int(cmp_mask_int),
		.unmask_int(cmp_unmask_int),
		
		.bus1(d_bus),
		.bus2(d_addr),
		.f_bus(f_bus)
	);
	
	logic_unit logic_unit (
		.clk(clk),
		.passh(lu_passh),
		.passl(lu_passl),
		.pass_high(lu_pass_high),
		.push(lu_push),
		.push_high(lu_push_high),
		.add(lu_add),
		.sub(lu_sub),
		.mul(lu_mul),
		.inc(lu_inc),
		.dec(lu_dec),
		.shr(lu_shr),
		.shl(lu_shl),
		.band(lu_band),
		.bor(lu_bor),
		.bxor(lu_bxor),
		.bnegate(lu_bnegate),
		
		.bus1(r_bus),
		.bus2(s_bus),
		.bus3(d_bus),
		.bus4(d_addr)
	);
	
	io_addresser io_addresser (
		.io_addr_read(io_addr_read),
		.io_addr(io_addr),
		.d_addr(d_addr)
	);
	
	control_unit control_unit (
		.clk(clk),
		
		.i_read(i_read),
		.i_push(i_push),
		.d_read(d_read),
		.d_push(d_push),
		.d_write(d_write),
		
		.io_read(io_read),
		.io_write(io_write),
		.io_push(io_push),
		.io_addr_read(io_addr_read),
		.io_addr(io_addr),
		.io_store_retaddr(io_store_retaddr),
		.io_push_retaddr(io_push_retaddr),
		.io_push_ints(io_push_ints),
		.io_push_int_addr(io_push_int_addr),
		.io_interrupt(io_interrupt),
		
		.pc_increment(pc_increment),
		.pc_load(pc_load),
		.pc_push(pc_push),
		
		.cmp_load(cmp_load),
		.cmp_push(cmp_push),
		.cmp_compare(cmp_compare),
		.cmp_mask_int(cmp_mask_int),
		.cmp_unmask_int(cmp_unmask_int),
		
		.lu_passh(lu_passh),
		.lu_passl(lu_passl),
		.lu_pass_high(lu_pass_high),
		.lu_push(lu_push),
		.lu_push_high(lu_push_high),
		.lu_add(lu_add),
		.lu_sub(lu_sub),
		.lu_inc(lu_inc),
		.lu_mul(lu_mul),
		.lu_dec(lu_dec),
		.lu_shr(lu_shr),
		.lu_shl(lu_shl),
		.lu_band(lu_band),
		.lu_bor(lu_bor),
		.lu_bxor(lu_bxor),
		.lu_bnegate(lu_bnegate),
	
		.reg3_write(reg3_write),
		.reg4_write(reg4_write),
		.reg1_addr(reg1_addr),
		.reg2_addr(reg2_addr),
		.reg3_addr(reg3_addr),
		.reg4_addr(reg4_addr),
	
		.flags(f_bus),
		.d_bus(d_bus)
	);
	
endmodule
