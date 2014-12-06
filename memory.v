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
	inout      [15:0] d_bus
	);

	reg [15:0] mem [255:0];
	reg [15:0] i_store;
	reg [15:0] d_store;
	assign d_bus = 
		i_push ? i_store :
		d_push ? d_store : 
		16'bz;
	

	integer i;
	initial begin
		for (i = 0; i < 256; i = i + 1) begin
			mem[i] = 16'b0;
		end
		
		
		mem[ 2] = 16'b1111001100000001; // jmp r0
	
		mem[16] = 16'b1010000000000000; // Ldu r0
		mem[17] = 16'b1011000000010100; // Ldl r0
		mem[18] = 16'b1010000100000000; // Ldu r1
		mem[19] = 16'b1011000100100000; // Ldl r1
		//mem[20] = 16'b1111101000000001; // sti r0 -> r1
		//mem[21] = 16'b1111101100010010; // ldl r1 -> r2
		mem[20] = 16'b1111110000010011; // cal r1, r3
		mem[21] = 16'b1111001100000000; // jmp r0
		
		mem[32] = 16'b1111001100000011; // jmp r3
		
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
