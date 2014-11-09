module register_file(
	input clk,
	input reg1_read,
	input reg2_read,
	input reg3_write,
	
	input   [3:0] reg1_addr, // register to R_Bus
	input   [3:0] reg2_addr, // register to D_Addr
	output [15:0] reg1_bus,
	output [15:0] reg2_bus,
	
	input   [3:0] reg3_addr, // register written back to
	input  [15:0] reg3_bus
	);

	reg [15:0] registers [15:0];

	assign reg1_bus = reg1_read ? registers[reg1_addr] : 16'bz;
	assign reg2_bus = reg2_read ? registers[reg2_addr] : 16'bz;
	
	always @ (posedge clk) begin
		if (reg3_write) begin
			registers[reg3_addr] <= reg3_bus;
		end
	end

endmodule
