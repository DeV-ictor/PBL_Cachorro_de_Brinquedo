/*

	Debouncer, para atraso da entrada, e contador de 2 bits, responsável pela codificação do dígito da saída e pelas chaves de seleção do multiplexador responsável pela seleção de pulso.

*/

module debouncer (
	input clk, Button,
	output A, B
);

	wire JK_out1, not_B;
	
	and and0 (JK_out1, Button, A);

	JK_ff T_inst_1 (
		.clk(clk),
		.q(A),
		.j(Button),
		.k(Button),
		.rst_n(1'b0)
	);
	
	JK_ff T_inst_2 (
	   .clk(clk),
		.q(B),
		.j(JK_out1),
		.k(JK_out1),
		.rst_n(1'b0)
	);

endmodule