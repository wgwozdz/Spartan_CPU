module logic_unit(
	input clk,
	input pass,
	input pass_high,
	input push,
	input push_high,
	input add,
	input sub,
	input inc,
	input dec,
	input mul,
	input shr,
	input shl,
	input band,
	input bor,
	input bxor,
	input bnegate,
	
	input [15:0] bus1,
	input [15:0] bus2,
	output [15:0] bus3,
	output [15:0] bus4
	);

	//TODO: handle overflow flag?
	reg [31:0] store;
	
	assign bus3 = 
	pass ? bus1 : 
	push ? store[15:0] :
	16'bz;
	
	assign bus4 = 
	pass_high ? bus2 : 
	push_high ? store[31:16] :
	16'bz;

	always @ (posedge clk) begin
		store <= 
		add ? {16'b0, bus1} + {16'b0, bus2} :
		sub ? {16'b0, bus1} - {16'b0, bus2} :
		inc ? {16'b0, bus1} + 1 :
		dec ? {16'b0, bus1} - 1 :
		mul ? {16'b0, bus1} * {16'b0, bus2} :
		shr ? {16'b0, bus1} >> bus2 :
		shl ? {16'b0, bus1} << bus2 :
		band ? {16'b0, bus1} & {16'b0, bus2} :
		bor ? {16'b0, bus1} | {16'b0, bus2} :
		bxor ? {16'b0, bus1} ^ {16'b0, bus2} :
		bnegate ? ~{16'b0, bus2} :
		store;
	end

endmodule
