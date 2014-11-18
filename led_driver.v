module led_driver(
	input clk,
	input read,
	input write,
	input [15:0] in_bus,
	output reg [15:0] out_bus,
	output reg [7:0] led = 0
	);
	
	always @ (posedge clk) begin
		if (read) begin
			out_bus <= led;
		end
		if (write) begin
			led <= in_bus;
		end
	end
endmodule
