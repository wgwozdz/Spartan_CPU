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

	initial begin
		mem[0] = 16'b1111111100011010; // Load literal
		mem[1] = 16'b1010101010101010; // Literal
		mem[2] = 16'b1111111100111010; // Set F
		mem[3] = 16'b1111111100101111; // Get F
		mem[4] = 16'b1111111100111111; // Set F
	end
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule
