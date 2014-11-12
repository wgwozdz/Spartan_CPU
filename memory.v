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
		mem[1] = 16'b0000000000000000; // Literal
		mem[2] = 16'b1111111100010001; // Ldl r1
		mem[3] = 16'b0000000000000001; // Literal
		mem[4] = 16'b1111111100010011; // Ldl r3
		mem[5] = 16'b0000000000000110; // Literal
		mem[6] = 16'b0001000000010000; // Add r0,r1,r0
		mem[7] = 16'b1111111100110000; // Setf r0
		mem[8] = 16'b1111001101110011; // Jmp r3
	end
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule
