module control_unit(
	input clk,
	
	output reg i_read = 0,
	output reg i_push = 0,
	output reg d_read = 0,
	output reg d_push = 0,
	output reg d_write = 0,
	
	output reg io_read = 0,
	output reg io_write = 0,
	output reg io_push = 0,
	output reg io_addr_read = 0,
	output reg [3:0] io_addr = 0,
	output reg io_store_retaddr = 0,
	output reg io_push_retaddr = 0,
	output reg io_push_ints = 0,
	output reg io_push_int_addr = 0,
	input io_interrupt,
	
	output reg pc_increment = 0,
	output reg pc_load = 0,
	output reg pc_push = 0,
	output reg pc_push_d = 0,
	
	output reg cmp_load = 0,
	output reg cmp_push = 0,
	output reg cmp_compare = 0,
	output reg cmp_mask_int = 0,
	output reg cmp_unmask_int = 0,
	
	output reg lu_passh = 0,
	output reg lu_passl = 0,
	output reg lu_pass_high = 0,
	output reg lu_swap = 0,
	output reg lu_push = 0,
	output reg lu_push_high = 0,
	output reg lu_push_div = 0,
	output reg lu_push_mod = 0,
	output reg lu_add = 0,
	output reg lu_sub = 0,
	output reg lu_mul = 0,
	output reg lu_inc = 0,
	output reg lu_dec = 0,
	output reg lu_shr = 0,
	output reg lu_shl = 0,
	output reg lu_band = 0,
	output reg lu_bor = 0,
	output reg lu_bxor = 0,
	output reg lu_bnegate = 0,
	
	output reg reg1_write = 0,
	output reg reg2_write = 0,
	output reg [3:0] reg1_addr = 0,
	output reg [3:0] reg2_addr = 0,
	
	input [2:0] flags,
	inout [15:0] d_bus
	);

	localparam 
		fetch = 0,
		decode = 1,
		upper_writeback = 2,
		lower_writeback = 3,
		ins_flush = 4,
		alu2_writeback = 5,
		memreg_writeback = 6,
		ioreg_writeback = 7,
		alu_writeback = 8,
		div_writeback = 9,
		div_wait = 10,
		mod_writeback = 11,
		mod_wait = 12,
		decode_int = 13,
		stop = 15;
	reg [3:0] next_step = ins_flush;
	
	reg [7:0] instruction;
	reg [5:0] wait_count;
	
	reg [3:0] next_reg1_addr = 0;
	reg [3:0] next_reg2_addr = 0;
	
	reg u_pass = 0;
	reg l_pass = 0;
	assign d_bus = 
	u_pass ? {instruction[7:0], 8'bz} :
	l_pass ? {8'bz, instruction[7:0]} :
	16'bz;
	
	localparam
	more_ops = 4'b1111,
	// 3 Op code instructions.
	z_add = 4'b0001,
	z_sub = 4'b0010,
	z_mul = 4'b0011,
	z_div = 4'b0100,
	z_mod = 4'b0101,
	z_and = 4'b0110,
	z_or  = 4'b0111,
	z_xor = 4'b1000,
	z_shr = 4'b1001,
	z_shl = 4'b1010,
	z_ldu = 4'b1011,
	z_ldl = 4'b1100,
	
	// 2 Op code instructions.
	o_mov = 4'b0001,
	o_cmp = 4'b0010,
	o_jmp = 4'b0011,
	o_ldm = 4'b0100,
	o_stm = 4'b0101,
	o_neg = 4'b0110,
	o_ioi = 4'b1000,
	o_ioo = 4'b1001,
	o_sti = 4'b1010, // Store and increment
	o_dld = 4'b1011, // Decrement and load
	o_cal = 4'b1100, // Push current PC to register and jmp to addr.
	
	// 1 Op code instructions.
	t_gtf = 4'b0001,
	t_stf = 4'b0010,
	t_inc = 4'b0011,
	t_dec = 4'b0100,
	
	// 0 Op code instructions.
	th_rit = 4'b0001, // Return to interrupted address, enable ints
	th_nop = 4'b1111;
	
	always @ (posedge clk) begin
		i_read <= 0;
		i_push <= 0;
		d_read <= 0;
		d_push <= 0;
		d_write <= 0;
		io_addr_read <= 0;
		io_read <= 0;
		io_write <= 0;
		io_push <= 0;
		io_store_retaddr <= 0;
		io_push_retaddr <= 0;
		io_push_ints <= 0;
		io_push_int_addr <= 0;
		pc_load <= 0;
		pc_increment <= 0;
		pc_push <= 0;
		pc_push_d <= 0;
		cmp_load <= 0;
		cmp_push <= 0;
		cmp_compare <= 0;
		cmp_mask_int <= 0;
		cmp_unmask_int <= 0;
		lu_passh <= 0;
		lu_passl <= 0;
		lu_pass_high <= 0;
		lu_swap <= 0;
		lu_push <= 0;
		lu_push_high <= 0;
		lu_push_div <= 0;
		lu_push_mod <= 0;
		lu_add <= 0;
		lu_sub <= 0;
		lu_mul <= 0;
		lu_inc <= 0;
		lu_dec <= 0;
		lu_shr <= 0;
		lu_shl <= 0;
		lu_band <= 0;
		lu_bor <= 0;
		lu_bxor <= 0;
		lu_bnegate <= 0;
		reg1_write <= 0;
		reg2_write <= 0;
		u_pass <= 0;
		l_pass <= 0;

		case (next_step)
			stop: begin end
		
			upper_writeback: begin
				i_read <= 1;
				u_pass <= 1;
				lu_passl <= 1;
				reg1_addr <= next_reg1_addr;
				reg1_write <= 1;
				next_step <= fetch;
			end
		
			lower_writeback: begin
				i_read <= 1;
				l_pass <= 1;
				lu_passh <= 1;
				reg1_addr <= next_reg1_addr;
				reg1_write <= 1;
				next_step <= fetch;
			end
			
			alu2_writeback: begin
				i_read <= 1;
				lu_push_high <= 1;
				reg2_addr <= next_reg2_addr;
				reg2_write <= 1;
				next_step <= fetch;
			end
			
			memreg_writeback: begin
				i_read <= 1;
				d_push <= 1;
				reg1_addr <= next_reg1_addr;
				reg1_write <= 1;
				next_step <= fetch;
			end
		
			ioreg_writeback: begin
				i_read <= 1;
				io_addr_read <= 1;
				io_push <= 1;
				reg1_addr <= next_reg1_addr;
				reg1_write <= 1;
				next_step <= fetch;
			end
			
			div_writeback: begin
				i_read <= 1;
				lu_push_div <= 1;
				reg2_addr <= next_reg2_addr;
				reg2_write <= 1;
				next_step <= fetch;
			end
			
			//TODO: optimize this. use div core rfd to tighten wait.
			div_wait: begin
				wait_count <= wait_count - 1;
				if (wait_count == 0) begin
					next_step <= div_writeback;
				end
			end
			
			mod_writeback: begin
				i_read <= 1;
				lu_push_mod <= 1;
				reg2_addr <= next_reg2_addr;
				reg2_write <= 1;
				next_step <= fetch;
			end
			
			//TODO: optimize this. use div core rfd to tighten wait.
			mod_wait: begin
				wait_count <= wait_count - 1;
				if (wait_count == 0) begin
					next_step <= mod_writeback;
				end
			end
		
			ins_flush: begin
				i_read <= 1;
				next_step <= fetch;
			end
			
			decode_int: begin
				d_push <= 1;
				pc_load <= 1;
				next_step <= ins_flush;
			end
			
			alu_writeback: begin
				i_read <= 1;
				lu_push <= 1;
				reg1_addr <= next_reg1_addr;
				reg1_write <= 1;
				next_step <= fetch;
			end
		
			fetch: begin
				if (io_interrupt && !flags[2]) begin
					cmp_mask_int <= 1;
					pc_push_d <= 1;
					io_store_retaddr <= 1;
					io_push_int_addr <= 1;
					d_read <= 1;
					next_step <= decode_int;
				end else begin
					i_push <= 1;
					pc_increment <= 1;
					next_step <= decode;
				end
			end
			
			decode: begin
				instruction <= d_bus[7:0];
				
				case (d_bus[15:12])
					// 3 op instructions here.
					z_add: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_add <= 1;
						next_step <= alu_writeback;
					end
					
					z_sub: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_sub <= 1;
						next_step <= alu_writeback;
					end
					
					z_mul: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_mul <= 1;
						next_step <= alu_writeback;
					end
					
					z_div: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg2_addr <= d_bus[3:0];
						wait_count <= 30;
						next_step <= div_wait;
					end
					
					z_mod: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg2_addr <= d_bus[3:0];
						wait_count <= 30;
						next_step <= mod_wait;
					end
					
					z_and: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_band <= 1;
						next_step <= alu_writeback;
					end
					
					z_or: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_bor <= 1;
						next_step <= alu_writeback;
					end
					
					z_xor: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_bxor <= 1;
						next_step <= alu_writeback;
					end
					
					z_shl: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_shl <= 1;
						next_step <= alu_writeback;
					end
					
					z_shr: begin
						reg1_addr <= d_bus[11:8];
						reg2_addr <= d_bus[7:4];
						next_reg1_addr <= d_bus[3:0];
						lu_shr <= 1;
						next_step <= alu_writeback;
					end
					
					z_ldu: begin
						reg1_addr <= d_bus[11:8];
						next_reg1_addr <= d_bus[11:8];
						next_step <= upper_writeback;
					end
					
					z_ldl: begin
						reg1_addr <= d_bus[11:8];
						next_reg1_addr <= d_bus[11:8];
						next_step <= lower_writeback;
					end
					
					more_ops: begin
						case (d_bus[11:8])
							// 2 op instructions here.		
							
							o_mov: begin
								reg1_addr <= d_bus[7:4];
								reg2_addr <= d_bus[3:0];
								lu_swap <= 1;
								reg2_write <= 1;
								next_step <= ins_flush;
							end
							
							o_cmp: begin
								reg1_addr <= d_bus[7:4];
								reg2_addr <= d_bus[3:0];
								lu_passh <= 1;
								lu_passl <= 1;
								lu_pass_high <= 1;
								cmp_compare <= 1;
								next_step <= ins_flush;
							end
							
							o_jmp : begin
								reg1_addr <= d_bus[3:0];
								lu_passh <= 1;
								lu_passl <= 1;
								if ((d_bus[4] &&  flags[0]) || // Equals
									 (d_bus[5] && ~flags[1] && ~flags[0]) || // Less than
									 (d_bus[6] &&  flags[1] && ~flags[0]) || // Greater than
									 (d_bus[7])) // Always: flags may not be in a consistent state
								begin
									pc_load <= 1;	
								end
								next_step <= ins_flush;
							end
							
							o_ldm: begin
								reg2_addr <= d_bus[7:4];
								next_reg1_addr <= d_bus[3:0];
								d_read <= 1;
								lu_pass_high <= 1;
								next_step <= memreg_writeback;
							end
							
							o_stm: begin
								reg1_addr <= d_bus[7:4];
								reg2_addr <= d_bus[3:0];
								lu_passh <= 1;
								lu_passl <= 1;
								lu_pass_high <= 1;
								d_write <= 1;
								next_step <= ins_flush;
							end
							
							o_neg: begin
								reg1_addr <= d_bus[7:4];
								next_reg1_addr <= d_bus[3:0];
								lu_bnegate <= 1;
								next_step <= alu_writeback;
							end
							
							o_ioi: begin
								io_addr <= d_bus[7:4];
								next_reg1_addr <= d_bus[3:0];
								io_addr_read <= 1;
								io_read <= 1;
								next_step <= ioreg_writeback;
							end
							
							o_ioo: begin
								io_addr <= d_bus[3:0];
								reg1_addr <= d_bus[7:4];
								io_addr_read <= 1;
								lu_passh <= 1;
								lu_passl <= 1;
								io_write <= 1;
								next_step <= ins_flush;
							end
							
							o_sti: begin
								reg1_addr <= d_bus[7:4];
								reg2_addr <= d_bus[3:0];
								next_reg2_addr <= d_bus[3:0];
								lu_pass_high <= 1;
								lu_passh <= 1;
								lu_passl <= 1;
								lu_inc <= 1;
								d_write <= 1;
								next_step <= alu2_writeback;
							end
							
							o_dld: begin
								reg2_addr <= d_bus[7:4];
								next_reg1_addr <= d_bus[3:0];
								lu_dec <= 1;
								d_read <= 1;
								reg2_write <= 1;
								next_step <= memreg_writeback;
							end
							
							o_cal: begin
								reg1_addr <= d_bus[7:4];
								reg2_addr <= d_bus[3:0];
								lu_passh <= 1;
								lu_passl <= 1;
								pc_load <= 1;
								pc_push <= 1;
								reg2_write <= 1;
								next_step <= ins_flush;
							end
							
							more_ops: begin
								case (d_bus[7:4])
									// 1 op instructions here.
									t_gtf: begin
										reg1_addr <= d_bus[3:0];
										cmp_push <= 1;
										reg1_write <= 1;
										next_step <= ins_flush;
									end
									
									t_stf: begin
										reg1_addr <= d_bus[3:0];
										lu_passh <= 1;
										lu_passl <= 1;
										cmp_load <= 1;
										next_step <= ins_flush;
									end
									
									t_inc: begin
										reg2_addr <= d_bus[3:0];
										next_reg1_addr <= d_bus[3:0];
										lu_inc <= 1;
										next_step <= alu_writeback;
									end
									
									t_dec: begin
										reg2_addr <= d_bus[3:0];
										next_reg1_addr <= d_bus[3:0];
										lu_dec <= 1;
										next_step <= alu_writeback;
									end

									more_ops: begin
										case (d_bus[3:0])
											// 0 op instructions here.
											th_rit: begin
												io_push_retaddr <= 1;
												pc_load <= 1;
												cmp_unmask_int <= 1;
												next_step <= ins_flush;
											end
											
											more_ops: begin
												next_step <= ins_flush;
											end
											
											default: next_step <= stop;
										endcase
									end
									
									default: next_step <= stop;
								endcase
							end
							
							default: next_step <= stop;
						endcase
					end
					
					default: next_step <= stop;
				endcase
			end
			
		endcase
	end
endmodule
