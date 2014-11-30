module register_file(
	input clk,
	input reg3_write,
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
		if (reg3_write) begin
			registers[reg3_addr] <= reg3_bus;
		end
		if (reg4_write) begin
			registers[reg4_addr] <= reg4_bus;
		end
	end

endmodule
