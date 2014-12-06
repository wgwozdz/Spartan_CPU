module comparator(
	input clk,
	input load,
	input push,
	input compare,
	input mask_int,
	input unmask_int,
	
	inout [15:0] bus1,
	input [15:0] bus2,
	output [2:0] f_bus
	);
	
	reg [15:0] flags = 16'b0000000000000100;
	assign f_bus = flags[2:0];
	assign bus1 = push ? flags : 16'bz;
	
	always @ (posedge clk) begin
		if (mask_int) begin
			flags[2] <= 1;
		end else if (unmask_int) begin
			flags[2] <= 0;
		end
		if (load) begin
			flags <= bus1;
		end else if (compare) begin
			//TODO: change flags so that theres an equals flag and gt/lt flag, not 4 total.
			flags[0] <= (bus1 == bus2);
			flags[1] <= (bus1 > bus2);
		end
	end

endmodule
