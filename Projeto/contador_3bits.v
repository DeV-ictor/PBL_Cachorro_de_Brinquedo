module contador_3bits (
    input clk,        // Clock
    input rst_but,      // Reset
    output Q0,        // Saída do bit menos significativo
    output Q1,        // Saída do bit do meio
    output Q2         // Saída do bit mais significativo
);

	wire qb0, qb1, reset, not_rst;
	
	not (not_rst, rst_but);
	
	or or_rst (reset, not_rst, rst_act);
	
	and and_rst (rst_act, Q1, Q2);

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