module program_counter(
	input clk,
	input increment,
	input load,
	input push,
	
	inout [15:0] d_bus,
	output reg [15:0] i_addr = 16
	);

	assign d_bus = push ? i_addr : 16'bz;

	always @ (posedge clk) begin
		if (increment) begin
			i_addr <= i_addr + 1;
		end else if (load) begin
			i_addr <= d_bus;
		end
	end

endmodule
