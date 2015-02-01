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

		//TODO: put default program here. Maybe it just displays hello world?
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
