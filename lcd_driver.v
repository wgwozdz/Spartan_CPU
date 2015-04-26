module lcd_driver(
	input clk,
	input read,
	input write,
	input [15:0] in_bus,
	output reg [15:0] out_bus,
	
	output lcd_rs,
	output lcd_rw,
	output lcd_e,
	output [7:4] lcd_d
	);

	wire [4:0] mem_addr;
	reg [7:0] mem_bus;

	(* ram_style = "distributed" *) reg [7:0] lcd_mem [31:0];

	integer i;
	initial begin
		out_bus <= 0;
		for (i = 0; i < 32; i = i + 1) begin
			lcd_mem[i] = " ";
		end
	end

	always @ (posedge clk) begin
		mem_bus <= lcd_mem[mem_addr]; //TODO: verify this still works synchronously.
	
		if (write) begin
			lcd_mem[in_bus[15:8]] <= in_bus[7:0];
		end
	end

	lcd lcd (
		.clk(clk),
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_e(lcd_e),
		.lcd_d(lcd_d),
		.mem_addr(mem_addr),
		.mem_bus(mem_bus)
	);

endmodule
