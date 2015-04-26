module register_file(
	input clk,
	input reg1_write,
	input reg2_write,
	
	input   [3:0] reg1_addr, // register to R_Bus
	input   [3:0] reg2_addr, // register to S_Bus
	
	output [15:0] reg1_obus,
	output [15:0] reg2_obus,
	input  [15:0] reg1_ibus,
	input  [15:0] reg2_ibus
	);

	(* ram_style = "distributed" *) reg [15:0] registers [15:0];

	//TODO: make synchronous?
	assign reg1_obus = registers[reg1_addr];
	assign reg2_obus = registers[reg2_addr];
	
	//TODO: remove single-write restriction
	/* This currently infers as 2 rams, with each having one port
	 * asynchronous read connected to either reg1 or reg2,
	 * and the other port connected to write addr/bus. It would be nice 
	 * for it to work as block ram.
	 */
	wire [3:0] write_addr;
	wire [15:0] write_bus;
	assign write = reg1_write || reg2_write;
	assign write_addr = reg1_write ? reg1_addr : reg2_addr;
	assign write_bus = reg1_write ? reg1_ibus : reg2_ibus;
	
	always @ (posedge clk) begin
		if (write) begin
			registers[write_addr] <= write_bus;
		end
	end

endmodule
