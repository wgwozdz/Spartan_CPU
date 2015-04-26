module timer(
	input clk,
	input read,
	input write,
	input [15:0] in_bus,
	output reg [15:0] out_bus,
	output reg interrupt = 0
	);

	localparam CYCLES_PER_INT = 50000000;

	reg [25:0] counter = 0;
	
	always @ (posedge clk) begin
		if (write) begin
			interrupt <= 0;
		end
		counter <= counter + 1;
		if (counter > (CYCLES_PER_INT - 1)) begin
			interrupt <= 1;
			counter <= 0;
		end
	end
endmodule
