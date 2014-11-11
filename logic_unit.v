module logic_unit(
	input passthrough,
	input add,
	input sub,
	input shr,
	input shl,
	input band,
	input bor,
	input bxor,
	input bnegate,
	
	input [15:0] bus1,
	input [15:0] bus2,
	output [15:0] bus3
	);

	//TODO: handle overflow flag? maybe assign each clock cycle.
	
	assign bus3 = 
	passthrough ? bus1 : 
	add ? bus1 + bus2 :
	sub ? bus1 - bus2 :
	shr ? bus1 >> bus2 :
	shl ? bus1 << bus2 :
	band ? bus1 & bus2 :
	bor ? bus1 | bus2 :
	bxor ? bus1 ^ bus2:
	bnegate ? ~bus1 :
	16'bz;

endmodule
