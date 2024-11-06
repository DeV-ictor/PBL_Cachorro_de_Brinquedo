/*

	Integração dos módulos para implementação do projeto

*/

module sistema (
	input clk_ini, but_deb,reset_act, on_off,
	output D1, D2, D3, D4, A, B, C, D, E, F, G, P
);

	wire clk_15, clk_19, clk_26, clk_27, clk_28, clk_c;
	
	and (clk, clk_ini, on_off);
	
	wire deb_B, act_B;
	
	not (deb_B, but_deb);

	clockdivider clk_outs_inst (
		.clk(clk),
		.clk_out_15(clk_15),
		.clk_out_19(clk_19),
		.clk_out_26(clk_26),
		.clk_out_27(clk_27),
		.clk_out_28(clk_28)
	);
	
	wire A_deb, B_deb;
	
	debouncer debouncer_inst (
		.clk(clk_26),
		.Button(deb_B),
		.A(B_deb),
		.B(A_deb)
	);
	
	mux4x1_clk_selector (
		.in0(1'b0),
		.in1(clk_26),
		.in2(clk_27),
		.in3(clk_28),
		.sel0(A_deb),
		.sel1(B_deb),
		.out(clk_c)
	);
	
	wire A_count, B_count, C_count;
	
	contador_3bits counter_inst (
		.clk(clk_c),
		.Q0(A_count),
		.Q1(B_count),
		.Q2(C_count),
		.rst_but(reset_act)
	);
	
	display display_inst (
		.clk(clk_19),
		.A_spd(A_deb),
		.B_spd(B_deb),
		.A_act(C_count),
		.B_act(B_count),
		.C_act(A_count),
		.digit1_out(D1),
		.digit2_out(D2),
		.digit3_out(D3),
		.digit4_out(D4),
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.E(E),
		.F(F),
		.G(G),
		.P(P)
	);
	
endmodule