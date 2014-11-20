module keyboard_driver(
	input clk,
	input read,
	input write,
	output interrupt,
	input [15:0] in_bus,
	output reg [15:0] out_bus,
	
	inout ps2_clk,
	inout ps2_data
	);
	
	wire [7:0] char_in;
	wire char_recv;
	reg [7:0] cmd_out;
	reg cmd_send;
	
	reg [7:0] buff [31:0];
	reg [4:0] r;
	reg [4:0] w;
	
	assign interrupt = (r != w);
	
	always @ (posedge clk) begin
		cmd_send <= 0;
		if (char_recv && (w != r - 1)) begin
			buff[w] <= char_in;
			w <= w + 1;
		end
		
		if (read) begin
			out_bus <= buff[r];
			r <= r + 1;
		end
		if (write) begin
			cmd_out <= in_bus[7:0];
			cmd_send <= 1;
		end
	end
	
	PS2_Controller ps2_control(
		.CLOCK_50(clk),
		.the_command(cmd_out),
		.send_command(cmd_send),
		.PS2_CLK(ps2_clk),
		.PS2_DAT(ps2_data),
		.received_data(char_in),
		.received_data_en(char_recv)
	);

endmodule
