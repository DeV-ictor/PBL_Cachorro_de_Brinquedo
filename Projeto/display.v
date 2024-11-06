module display (
	input clk, A_spd, B_spd, A_act, B_act, C_act, onoff,
	output A, B, C, D, E, F, G, P, digit1_out, digit2_out, digit3_out, digit4_out
);

	// Instanciação do multiplexador responsável por alternar as saídas de cada segmento.

	mux_2x1_act_spd mux_act_spd_inst (
		.sel(clk),
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.E(E),
		.F(F),
		.G(G),
		.A_x(A_act),
		.B_x(B_act),
		.C_x(C_act),
		.A_z(A_spd),
		.B_z(B_spd)
	);
	
	// Instanciação do módulo responsável por alternar o dígito ativo.
	
	mux_2x1_digit mux_digit_inst (
		.sel(clk),
		.digit1_out(digit1_out),
		.digit4_out(digit4_out)
	);
	
	// Desligar fixamente o segmento P (pontos) e os dígitos 2 e 3 do display.
	
	not (P, 1'b0);
	not (digit2_out, 1'b0);
	not (digit3_out, 1'b0);
	
endmodule