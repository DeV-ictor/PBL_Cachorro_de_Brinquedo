module clockdivider (
	input	clk,
	output clk_out_26, clk_out_27, clk_out_19, clk_out_28
);

	// Fios para recebimento e transferência de pulsos

	wire clk1, clk2, clk3, clk4, clk5, clk6, clk7, clk8, clk9, clk10, clk11, clk12, clk13, clk14, clk15, clk16, clk17, clk18, clk19, clk20, clk21, clk22, clk23, clk24, clk25;

	// Instanciação dos módulos do flip flop pára divisão do clock
	
	JK_ff tff1 (
		.clk(clk),
		.q(clk1),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff2 (
		.clk(clk1),
		.q(clk2),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff3 (
		.clk(clk2),
		.q(clk3),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff4 (
		.clk(clk3),
		.q(clk4),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff5 (
		.clk(clk4),
		.q(clk5),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff6 (
		.clk(clk5),
		.q(clk6),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff7 (
		.clk(clk6),
		.q(clk7),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff8 (
		.clk(clk7),
		.q(clk8),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff9 (
		.clk(clk8),
		.q(clk9),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff10 (
		.clk(clk9),
		.q(clk10),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff11 (
		.clk(clk10),
		.q(clk11),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff12 (
		.clk(clk11),
		.q(clk12),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff13 (
		.clk(clk12),
		.q(clk13),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff14 (
		.clk(clk13),
		.q(clk14),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff15 (
		.clk(clk14),
		.q(clk15),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)		
	);
	
	JK_ff tff16 (
		.clk(clk15),
		.q(clk16),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff17 (
		.clk(clk16),
		.q(clk17),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff18 (
		.clk(clk17),
		.q(clk18),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff19 (
		.clk(clk18),
		.q(clk_out_19),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff20 (
		.clk(clk_out_19),
		.q(clk20),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff21 (
		.clk(clk20),
		.q(clk21),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff22 (
		.clk(clk21),
		.q(clk22),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff23 (
		.clk(clk22),
		.q(clk23),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff24 (
		.clk(clk23),
		.q(clk24),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff25 (
		.clk(clk24),
		.q(clk25),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff26 (
		.clk(clk25),
		.q(clk_out_26),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);

	JK_ff tff27 (
		.clk(clk_out_26),
		.q(clk_out_27),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);
	
	JK_ff tff28 (
		.clk(clk_out_27),
		.q(clk_out_28),
		.rst_n(1'b0),
		.j(1'b1),
		.k(1'b1)
	);

endmodule