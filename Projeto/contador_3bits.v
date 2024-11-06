module contador_3bits (
    input clk,        // Clock
    input rst_but,      // Reset
    output Q0,        // Saída do bit menos significativo
    output Q1,        // Saída do bit do meio
    output Q2         // Saída do bit mais significativo
);

	// Declaração dos fios intermediários.

	wire qb0, qb1, reset, not_rst;
	
	// "Correção" da entrada do botão.
	
	not (not_rst, rst_but);
	
	// Verificar se o botão foi pressionado ou se o ciclo de ações foi completado para que seja reiniciado.
	
	or or_rst (reset, not_rst, rst_act);
	
	and and_rst (rst_act, Q1, Q2);
	
	// Instanciação dos módulos para implementação do contador de 3 bits.

   JK_ff jk_inst_Q0 (
		.clk(clk),
		.j(1'b1),
		.k(1'b1),
		.q_bar(qb0),
		.q(Q0),
		.rst_n(reset)
   );
  
   JK_ff jk_inst_Q1 (
		.clk(qb0),
		.j(1'b1),
		.k(1'b1),
		.q_bar(qb1),
		.q(Q1),
		.rst_n(reset)
   );
  
   JK_ff jk_inst_Q2 (
		.clk(qb1),
		.j(1'b1),
		.k(1'b1),
		.q(Q2),
		.rst_n(reset)
   );

endmodule