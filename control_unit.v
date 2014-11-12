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
	output reg lu_inc = 0,
	output reg lu_dec = 0,
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

	localparam 
		fetch = 0,
		decode = 1,
		finish_jmp = 2,
		finish_ldm = 3,
		finish_ldl = 4,
		idle = 5,
		stop = 6;
	reg [3:0] next_step = idle;
	
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
	o_mov = 4'b0001,
	o_cmp = 4'b0010,
	o_jmp = 4'b0011,
	o_ldm = 4'b0100,
	o_stm = 4'b0101,
	o_neg = 4'b0110,
	
	// 1 Op code instructions.
	t_ldl = 4'b0001,
	t_gtf = 4'b0010,
	t_stf = 4'b0011,
	t_inc = 4'b0100,
	t_dec = 4'b0101,
	
	// 0 Op code instructions.
	
	th_nop = 4'b1111;
	
	always @ (posedge clk) begin
		mem_read <= 0;
		mem_write <= 0;
		pc_load <= 0;
		pc_increment <= 0;
		cmp_load <= 0;
		cmp_compare <= 0;
		lu_passthrough <= 0;
		lu_add <= 0;
		lu_sub <= 0;
		lu_inc <= 0;
		lu_dec <= 0;
		lu_shr <= 0;
		lu_shl <= 0;
		lu_band <= 0;
		lu_bor <= 0;
		lu_bxor <= 0;
		lu_bnegate <= 0;
		reg1_read <= 0;
		reg2_read <= 0;
		reg3_write <= 0;
		i_bus_pass <= 0;
		flags_pass <= 0;

		case (next_step)
			stop: begin end
		
			idle: begin
				next_step <= fetch;
			end
			
			finish_ldl: begin
				i_bus_pass <= 1;
				reg3_write <= 1;
				next_step <= idle;
			end
			
			finish_jmp: begin
				next_step <= idle;
			end
			
			finish_ldm: begin
				mem_read <= 1;
				reg3_write <= 1;
				next_step <= idle;
			end
			
			fetch: begin
				pc_increment <= 1;
				instruction <= i_bus;
				next_step <= decode;
			end
			
			decode: begin
				case (instruction[15:12])
					// 3 op instructions here.
					z_add: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_add <= 1;
						next_step <= idle;
					end
					
					z_sub: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_sub <= 1;
						next_step <= idle;
					end
					
					z_and: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_band <= 1;
						next_step <= idle;
					end
					
					z_or: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_bor <= 1;
						next_step <= idle;
					end
					
					z_xor: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_bxor <= 1;
						next_step <= idle;
					end
					
					z_shr: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_shr <= 1;
						next_step <= idle;
					end
					
					z_shl: begin
						reg1_addr <= instruction[11:8];
						reg2_addr <= instruction[7:4];
						reg3_addr <= instruction[3:0];
						reg1_read <= 1;
						reg2_read <= 1;
						reg3_write <= 1;
						lu_shl <= 1;
						next_step <= idle;
					end
					
					more_ops: begin
						case (instruction[11:8])
							// 2 op instructions here.
							o_mov: begin
								reg1_addr <= instruction[7:4];
								reg3_addr <= instruction[3:0];
								reg1_read <= 1;
								lu_passthrough <= 1;
								reg3_write <= 1;
								next_step <= idle;
							end
							
							o_cmp: begin
								reg1_addr <= instruction[7:4];
								reg2_addr <= instruction[3:0];
								reg1_read <= 1;
								reg2_read <= 1;
								cmp_compare <= 1;
								next_step <= idle;
							end
							
							o_jmp: begin
								reg1_addr <= instruction[3:0];
								reg1_read <= 1;
								lu_passthrough <= 1;
								if ((instruction[4] &&  flags[0]) || // Equals
									 (instruction[5] && ~flags[1]) || // Less than
									 (instruction[6] &&  flags[1]))   // Greater than
								begin
									pc_load <= 1;	
								end
								next_step <= finish_jmp;
							end
							
							o_ldm: begin
								reg2_addr <= instruction[7:4];
								reg3_addr <= instruction[3:0];
								reg2_read <= 1;
								next_step <= finish_ldm;
							end
							
							o_stm: begin
								reg1_addr <= instruction[7:4];
								reg2_addr <= instruction[3:0];
								reg1_read <= 1;
								reg2_read <= 1;
								lu_passthrough <= 1;
								mem_write <= 1;
								next_step <= idle;
							end
							
							o_neg: begin
								reg1_addr <= instruction[7:4];
								reg3_addr <= instruction[3:0];
								reg1_read <= 1;
								lu_bnegate <= 1;
								reg3_write <= 1;
								next_step <= idle;
							end
							
							more_ops: begin
								case (instruction[7:4])
									// 1 op instructions here.
									t_ldl: begin
										pc_increment <= 1;
										reg3_addr <= instruction[3:0];
										next_step <= finish_ldl;
									end
									
									t_gtf: begin
										reg3_addr <= instruction[3:0];
										flags_pass <= 1;
										reg3_write <= 1;
										next_step <= idle;
									end
									
									t_stf: begin
										reg1_addr <= instruction[3:0];
										reg1_read <= 1;
										cmp_load <= 1;
										next_step <= idle;
									end
									
									t_inc: begin
										reg1_addr <= instruction[3:0];
										reg3_addr <= instruction[3:0];
										reg1_read <= 1;
										lu_inc <= 1;
										reg3_write <= 1;
										next_step <= idle;
									end
									
									t_dec: begin
										reg1_addr <= instruction[3:0];
										reg3_addr <= instruction[3:0];
										reg1_read <= 1;
										lu_dec <= 1;
										reg3_write <= 1;
										next_step <= idle;
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
