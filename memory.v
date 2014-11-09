module memory(
	input clk,

	// Control
	input read,
	input write,

	// Buses
	input      [15:0] d_addr,
	input      [15:0] i_addr,
	inout      [15:0] d_bus,
	output reg [15:0] i_bus
	);

	reg [15:0] mem [65535:0];
	assign d_bus = read ? mem[d_addr] : 16'bz;
	
	//TODO: turn this into a memory controller, so only one port is needed.
	// Separate memory from the rest of the CPU, make it a top level input.
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule
