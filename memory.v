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

	//reg [15:0] mem [65535:0];
	reg [15:0] mem [127:0];
	assign d_bus = read ? mem[d_addr] : 16'bz;

	integer i;
	initial begin
		for (i = 0; i < 128; i = i + 1) begin
			mem[i] = 16'b0;
		end
	
		mem[0] = 16'b1111111100010000; // Ldl r0
		mem[1] = 16'b1010101010101010; // Literal
		mem[2] = 16'b1111111100010001; // Ldl r1
		mem[3] = 16'b0000000000000100; // Literal
		mem[4] = 16'b1111111100110000; // Setf r0
		mem[5] = 16'b1111011000000000; // Negate r0, r0
		mem[6] = 16'b1111001111110001; // Jmp r1
	end
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule
