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

	(* ram_style = "distributed" *) reg [15:0] registers [15:0];

	assign reg1_bus = registers[reg1_addr];
	assign reg2_bus = registers[reg2_addr];
	
	// You can only write one bus at a time.
	assign write = reg3_write || reg4_write;
	wire [3:0] write_addr;
	wire [15:0] write_bus;
	assign write_addr = 
		reg3_write ? reg3_addr :
		reg4_addr;
	assign write_bus = 
		reg3_write ? reg3_bus :
		reg4_bus;
	
	
	always @ (posedge clk) begin
		if (write) begin
			registers[write_addr] <= write_bus;
		end
	end

endmodule
