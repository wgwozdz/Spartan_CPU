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

	reg [15:0] mem [255:0];
	reg [15:0] d_mem;
	assign d_bus = read ? d_mem : 16'bz;

	integer i;
	initial begin
		for (i = 0; i < 256; i = i + 1) begin
			mem[i] = 16'b0;
		end
		mem[ 0] = 16'b1111111100010000; // Ldl r3
		mem[ 1] = {8'b00000000,   "H"}; // Literal
		mem[ 2] = 16'b1111100100010000; // IOO 1, r3
		mem[ 3] = 16'b1111111100010000; // Ldl r3
		mem[ 4] = {8'b00000001,   "e"}; // Literal
		mem[ 5] = 16'b1111100100010000; // IOO 1, r3
		mem[ 6] = 16'b1111111100010000; // Ldl r3
		mem[ 7] = {8'b00000010,   "l"}; // Literal
		mem[ 8] = 16'b1111100100010000; // IOO 1, r3
		mem[ 9] = 16'b1111111100010000; // Ldl r3
		mem[10] = {8'b00000011,   "l"}; // Literal
		mem[11] = 16'b1111100100010000; // IOO 1, r3
		mem[12] = 16'b1111111100010000; // Ldl r3
		mem[13] = {8'b00000100,   "o"}; // Literal
		mem[14] = 16'b1111100100010000; // IOO 1, r3
		mem[15] = 16'b1111111100010000; // Ldl r3
		mem[16] = {8'b00000101,   ","}; // Literal
		mem[17] = 16'b1111100100010000; // IOO 1, r3
		mem[18] = 16'b1111111100010000; // Ldl r3
		mem[19] = {8'b00000110,   " "}; // Literal
		mem[20] = 16'b1111100100010000; // IOO 1, r3
		mem[21] = 16'b1111111100010000; // Ldl r3
		mem[22] = {8'b00000111,   "W"}; // Literal
		mem[23] = 16'b1111100100010000; // IOO 1, r3
		mem[24] = 16'b1111111100010000; // Ldl r3
		mem[25] = {8'b00001000,   "o"}; // Literal
		mem[26] = 16'b1111100100010000; // IOO 1, r3
		mem[27] = 16'b1111111100010000; // Ldl r3
		mem[28] = {8'b00001001,   "r"}; // Literal
		mem[29] = 16'b1111100100010000; // IOO 1, r3
		mem[30] = 16'b1111111100010000; // Ldl r3
		mem[31] = {8'b00001010,   "l"}; // Literal
		mem[32] = 16'b1111100100010000; // IOO 1, r3
		mem[33] = 16'b1111111100010000; // Ldl r3
		mem[34] = {8'b00001011,   "d"}; // Literal
		mem[35] = 16'b1111100100010000; // IOO 1, r3
		mem[36] = 16'b1111111100010000; // Ldl r3
		mem[37] = {8'b00001100,   "!"}; // Literal
		mem[38] = 16'b1111100100010000; // IOO 1, r3
	end
	
	always @ (posedge clk) begin
		i_bus <= mem[i_addr];
		d_mem <= mem[d_addr];
		
		if (write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule
