`timescale 1ns / 1ps

module control_unit(
	input clk,
	
	output reg mem_read = 0,
	output reg mem_write = 0,
	
	output reg pc_increment = 0,
	output reg pc_load = 0,
	
	output reg cmp_load = 0,
	output reg cmp_compare = 0,
	
	output reg lu_passthrough = 0,
	output reg lu_add = 0,
	output reg lu_sub = 0,
	output reg lu_shr = 0,
	output reg lu_shl = 0,
	output reg lu_band = 0,
	output reg lu_bor = 0,
	output reg lu_bxor = 0,
	output reg lu_bnegate = 0,
	
	output reg reg1_read = 0,
	output reg reg2_read = 0,
	output reg reg3_write = 0,
	output reg [3:0] reg1_addr = 0,
	output reg [3:0] reg2_addr = 0,
	output reg [3:0] reg3_addr = 0,
	
	input [15:0] i_bus,
	input [15:0] flags,
	output [15:0] d_bus
	);

	initial pc_increment = 0;
	
	localparam 
		fetch = 0,
		decode = 1,
		reg_writeback = 2,
		mem_writeback = 3,
		flags_writeback = 4,
		no_writeback = 5,
		stop = 6,
		write_literal = 7,
		asdf = 8,
		wait_literal = 9;
	reg [3:0] next_step = asdf;
	
	reg i_bus_pass = 0;
	reg flags_pass = 0;
	assign d_bus = 
	i_bus_pass ? i_bus : 
	flags_pass ? flags :
	16'bz;
	
	reg [15:0] instruction;
	
	localparam
	more_ops = 4'b1111,
	// 3 Op code instructions.
	z_add = 4'b0001,
	z_sub = 4'b0010,
	z_and = 4'b0011,
	z_or  = 4'b0100,
	z_xor = 4'b0101,
	z_shr = 4'b0110,
	z_shl = 4'b0111,
	
	// 2 Op code instructions.
	o_cmp = 4'b0001,
	o_jmp = 4'b0010,
	o_neg = 4'b0011,
	o_mov = 4'b0100,

	o_ldm = 4'b0110,
	o_stm = 4'b0111,
	
	// 1 Op code instructions.
	t_ldl = 4'b0001,
	t_gtf = 4'b0010,
	t_stf = 4'b0011,
	
	// 0 Op code instructions.
	
	th_nop = 4'b1111;
	
	always @ (posedge clk) begin
		case (next_step)
			idle: begin
				mem_read <= 0;
				mem_write <= 0;
				pc_load <= 0;
				cmp_load <= 0;
				cmp_compare <= 0;
				lu_passthrough <= 0;
				lu_add <= 0;
				lu_sub <= 0;
				lu_shr <= 0;
				lu_shl <= 0;
				lu_band <= 0;
				lu_bor <= 0;
				lu_bxor <= 0;
				lu_bnegate <= 0;
				reg1_read <= 0;
				reg2_read <= 0;
				reg3_write <= 0;

				next_step <= fetch;
			end
			
			write_literal: begin
				pc_increment <= 1;
				reg3_write <= 1;
				next_step <= wait_literal;
			end
			
			wait_literal: begin
				pc_increment <= 0;
				next_step <= asdf;
			end
			
			reg_writeback: begin
				pc_increment <= 0;
				reg3_write <= 1;
				next_step <= fetch;
			end
			
			mem_writeback: begin
				pc_increment <= 0;
				mem_write <= 1;
				next_step <= fetch;
			end
			
			flags_writeback: begin
				pc_increment <= 0;
				cmp_load <= 1;
				next_step <= fetch;
			end
			
			fetch: begin
				mem_read <= 0;
				mem_write <= 0;
				pc_load <= 0;
				cmp_load <= 0;
				cmp_compare <= 0;
				lu_passthrough <= 0;
				lu_add <= 0;
				lu_sub <= 0;
				lu_shr <= 0;
				lu_shl <= 0;
				lu_band <= 0;
				lu_bor <= 0;
				lu_bxor <= 0;
				lu_bnegate <= 0;
				reg1_read <= 0;
				reg2_read <= 0;
				reg3_write <= 0;
				pc_increment <= 1;
				i_bus_pass <= 0;
				flags_pass <= 0;
				instruction <= i_bus;
				next_step <= decode;
			end
			
			decode: begin
				pc_increment <= 0;
				case (instruction[15:12])
					// 3 op instructions here.
					
					more_ops: begin
						case (instruction[11:8])
							// 2 op instructions here.
							
							more_ops: begin
								case (instruction[7:4])
									// 1 op instructions here.
									
									t_ldl: begin
										i_bus_pass <= 1;
										reg3_addr <= instruction[3:0];
										next_step <= write_literal;
									end
									
									t_gtf: begin
										flags_pass <= 1;
										reg3_addr <= instruction[3:0];
										next_step <= reg_writeback;
									end
									
									t_stf: begin
										reg1_addr <= instruction[3:0];
										reg1_read <= 1;
										next_step <= flags_writeback;
									end
									
									more_ops: begin
										case (instruction[3:0])
											// 0 op instructions here.
											more_ops: next_step <= idle;
											
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
			
			default: next_step <= stop;
		endcase
	end

endmodule
