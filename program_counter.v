module program_counter(
	input clk,
	input increment,
	input load,
	input push,
	input push_d,
	
	inout [15:0] d_bus,
	output [15:0] d_addr,
	output reg [15:0] i_addr = 16 //TODO push i_addr on d_addr on i_read signal.
	);

	assign d_addr = push ? i_addr : 16'bz;
	assign d_bus = push_d ? i_addr : 16'bz;

	always @ (posedge clk) begin
		if (increment) begin
			i_addr <= i_addr + 1;
		end else if (load) begin
			i_addr <= d_bus;
		end
	end

endmodule
