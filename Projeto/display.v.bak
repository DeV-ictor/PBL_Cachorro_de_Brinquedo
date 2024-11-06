module display (
	input Digit1, Digit4,
	output active_digit, active_digit_not, A, B, C, D, E, F, G
);

	wire clk_out;

	clockdivisor clkdiv_inst (
		.clk_out(clk_out)
	);
	
	mux_4x1_spd mux_1_inst (
		.sel(clk_out)
	);
	
	mux_4x1 mux_digit_inst (
		.sel(clk_out),
		.in0(Digit1),
		.in1(Digit4),
		.out(active_digit)
	);
	
	not not0 (active_digit_not, active_digit);

endmodule