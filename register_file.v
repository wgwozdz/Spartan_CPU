module register_file(
	input clk,
	input reg3_writeu,
	input reg3_writel,
	input reg4_write,
	
	input   [3:0] reg1_addr, // register to R_Bus
	input   [3:0] reg2_addr, // register to S_Bus
	input   [3:0] reg3_addr, // register from D_Bus
	input   [3:0] reg4_addr, // register from D_Addr
	
	output [15:0] reg1_bus,
	output [15:0] reg2_bus,
	input  [15:0] reg3_bus,
	input  [15:0] reg4_bus
	);

	reg [15:0] registers [15:0];

	assign reg1_bus = registers[reg1_addr];
	assign reg2_bus = registers[reg2_addr];
	
	always @ (posedge clk) begin
		// TODO: refactor this so it doesnt use so many LUTs.
		// Maybe have push upper/lower signal on lu_push_upper, push other half from control unit and save whole reg.
		if (reg3_writeu) begin 
			registers[reg3_addr][15:8] <= reg3_bus[15:8];
		end else if (reg3_writel) begin
			registers[reg3_addr][7:0] <= reg3_bus[7:0];
		end else if (reg4_write) begin
			registers[reg4_addr] <= reg4_bus;
		end
	end

endmodule
