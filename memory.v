module memory(
	input clk,

	// Control
	input d_read,
	input d_write,
	input d_push,
	input i_read,
	input i_push,

	// Buses
	input      [15:0] d_addr,
	input      [15:0] i_addr,
	inout      [15:0] d_bus,
	output     [15:0] i_bus
	);

	reg [15:0] mem [255:0];
	reg [15:0] i_store;
	reg [15:0] d_store;
	assign i_bus = i_push ? i_store : 16'bz;
	assign d_bus = d_push ? d_store : 16'bz;
	

	integer i;
	initial begin
		for (i = 0; i < 256; i = i + 1) begin
			mem[i] = 16'b0;
		end
		
		mem[ 2] = 16'b0000000000010111;
	
		mem[16] = 16'b1111111100010000; // Ldl r0
		mem[17] = 16'b0000000000000000; // Literal
		mem[18] = 16'b1111111100010001; // Ldl r1
		mem[19] = 16'b0000000000010101; // Literal
		mem[20] = 16'b1111111100110000; // Setf r0
		mem[21] = 16'b1111001111110001; // jmp r1
		mem[22] = 16'b0000000000000000; // nothing
		mem[23] = 16'b1111111101100011; // Read interrupts.
		mem[24] = 16'b1111100000100000; // IOI 2, r0
		mem[25] = 16'b1111100100000000; // IOO 0, r0
		mem[26] = 16'b1111111111110001; // ret interrupt.
		
	end
	
	always @ (posedge clk) begin
		if (i_read) begin
			i_store <= mem[i_addr];
		end else if (d_read) begin
			d_store <= mem[d_addr];
		end else if (d_write) begin
			mem[d_addr] <= d_bus;
		end
	end

endmodule
