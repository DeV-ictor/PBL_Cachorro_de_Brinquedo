module dec_7seg_spd (
	input A, B,
	output S_a, S_b, S_c, S_d, S_e, S_f, S_g
);

	wire A_not, B_not;
	
	not not0 (A_not, A);
	not not1 (B_not, B);
	
	// Saída para segmentos A, D, E

	and and_a (S_a, A, B_not);
	and and_d (S_d, A, B_not);
	and and_e (S_e, A, B_not);

	
	// Saída para segmentos C, F

	and and_c (S_c, A_not, B);
	and and_f (S_f, A_not, B);

	// Saída para segmentos G

	and and_g (S_g, A_not, B_not);
	
	// Saída para segmentos B

	and and_b (S_b, 1'b0, A);

endmodule