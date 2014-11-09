`timescale 1ns / 1ps

module control_unit(
	input clk,
	
	output mem_read = 0,
	output mem_write = 0,
	
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
	output [15:0] d_bus,
	output [15:0] d_addr
	);

	
	localparam 
		fetch = 0,
		decode = 1,
		reg_writeback = 2,
		mem_writeback = 3,
		flags_writeback = 4,
		no_writeback = 5,
		stop = 6;
	reg next_step = fetch;
	
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
			reg_writeback: begin
				reg3_write <= 1;
				next_step <= fetch;
			end
			mem_writeback: begin
				mem_write <= 1;
				next_step <= fetch;
			end
			fetch: begin
				//TODO: push everything else low.
				instruction <= i_bus;
				pc_increment <= 1;
				next_step <= decode;
			end
			decode: begin
				pc_increment <= 0;
				case (instruction[15:12])
					// 3 op instructions here.
					
					more_ops: begin
						case (instruction[12:8])
							// 2 op instructions here.
							
							more_ops: begin
								case (instruction[7:4])
									// 1 op instructions here.
									
									more_ops: begin
										case (instruction[3:0])
											// 0 op instructions here.
											more_ops: next_step <= no_writeback;
											
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
