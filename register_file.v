module register_file(
	input clk,
	input reg1_write,
	input reg2_write,
	
	input   [3:0] reg1_addr, // register to R_Bus
	input   [3:0] reg2_addr, // register to S_Bus
	
	output [15:0] reg1_obus,
	output [15:0] reg2_obus,
	input  [15:0] reg1_ibus,
	input  [15:0] reg2_ibus
	);

	(* ram_style = "distributed" *) reg [15:0] registers [15:0];

	assign reg1_obus = registers[reg1_addr];
	assign reg2_obus = registers[reg2_addr];
	
	always @ (posedge clk) begin
		if (reg1_write) begin
			registers[reg1_addr] <= reg1_ibus;
		end
		
		if (reg2_write) begin
			registers[reg2_addr] <= reg2_ibus;
		end
	end

endmodule
