module comparator(
	input clk,
	input compare,
	input load,
	
	input [15:0] bus1,
	input [15:0] bus2,
	output reg [15:0] flags = 0
	);
	
	always @ (posedge clk) begin
		if (load) begin
			flags <= bus1;
		end else if (compare) begin
			//TODO: change flags so that theres an equals flag and gt/lt flag, not 4 total.
			flags[0] <= (bus1 == bus2);
			flags[1] <= (bus1 > bus2);
		end
	end

endmodule
