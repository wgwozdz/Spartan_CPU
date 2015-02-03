`timescale 1ns / 1ps

module computer_test;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] led;
	wire lcd_rs;
	wire lcd_rw;
	wire lcd_e;
	wire [11:8] sf_d;

	// Bidirs
	wire ps2_clk;
	wire ps2_data;

	// Instantiate the Unit Under Test (UUT)
	computer uut (
		.clk(clk), 
		.led(led), 
		.lcd_rs(lcd_rs), 
		.lcd_rw(lcd_rw), 
		.lcd_e(lcd_e), 
		.sf_d(sf_d), 
		.ps2_clk(ps2_clk), 
		.ps2_data(ps2_data)
	);

	always
		#1 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10000; // wait for cpu to process.
		$display("Leds are %d", led);
		$finish;
	

	end
      
endmodule

