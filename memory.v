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

	(* ram_style = "block" *) reg [15:0] mem [255:0];
	reg [15:0] m_store;
	assign d_bus = 
		i_push ? m_store :
		d_push ? m_store : 
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
		mem[19] = 16'b1011000101000000; // Ldl r1
		//mem[20] = 16'b1111101000000001; // sti r0 -> [r1]
		//mem[21] = 16'b1111101100010010; // dld [r1] -> r2
		mem[20] = 16'b1111100100000000; // write led r0
		mem[21] = 16'b1111100000000010; // read led r2
		mem[22] = 16'b1111010100010000; // store r0 -> r1
		mem[23] = 16'b1111010000010100; // load r1 -> r4
		mem[24] = 16'b1111001000010000; // cmp r1 to r0
		mem[25] = 16'b1111000100001000; // mov r0 to r8
		mem[26] = 16'b1111011010001001; // neg r8, r9
		mem[27] = 16'b0001000000101010; // add r0,r2,r10
		mem[28] = 16'b1111111100101001; // setf r9
		mem[29] = 16'b1111111100011011; // getf r11
		mem[30] = 16'b1111111111111111; // noop
		mem[31] = 16'b1111001111110000; // jmp r0	
	end
	
	assign read = d_read || i_read;
	wire [15:0] addr;
	assign addr = 
		d_read ? d_addr :
		i_read ? i_addr :
		d_addr;

	always @ (posedge clk) begin
		if (read) begin
			m_store <= mem[addr];
		end else if (d_write) begin
			mem[addr] <= d_bus;
		end
	end

endmodule
