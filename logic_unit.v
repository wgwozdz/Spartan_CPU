module logic_unit(
	input clk,
	input passh,
	input passl,
	input pass_high,
	input swap,
	input push,
	input push_high,
	input push_div,
	input push_mod,
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

	wire [15:0] divided, moded;
	wire rfd;
	//TODO: handle overflow flag?
	reg [15:0] store;
	assign bus3 [15:8] = 
		passh ? bus1[15:8] : 
		push ? store[15:8] :
		swap ? bus2[15:8] :
		16'bz;
	assign bus3 [7:0] = 
		passl ? bus1[7:0] : 
		push ? store[7:0] :
		swap ? bus2[7:0] :
		16'bz;
	
	assign bus4 = 
		dec ? bus2 - 1 : // To get dld in 3 cycles.
		pass_high ? bus2 : 
		push_high ? store[15:0] :
		push_div ? divided :
		push_mod ? moded :
		swap ? bus1 :
		16'bz;

	always @ (posedge clk) begin
		store <= 
			add ? {16'b0, bus1} + {16'b0, bus2} :
			sub ? {16'b0, bus1} - {16'b0, bus2} :
			inc ? {16'b0, bus2} + 1 :
			dec ? {16'b0, bus2} - 1 :
			mul ? {bus1} * {bus2} :
			shr ? {16'b0, bus1} >> bus2 :
			shl ? {16'b0, bus1} << bus2 :
			band ? {16'b0, bus1} & {16'b0, bus2} :
			bor ? {16'b0, bus1} | {16'b0, bus2} :
			bxor ? {16'b0, bus1} ^ {16'b0, bus2} :
			bnegate ? ~{16'b0, bus1} :
			store;
	end
	
	//TODO: use a core with a different latency to reduce size.
	div_gen_v3_0 div (
		.clk(clk),
		.rfd(rfd),
		.dividend(bus1),
		.quotient(divided),
		.divisor(bus2),
		.fractional(moded)
	);

endmodule
