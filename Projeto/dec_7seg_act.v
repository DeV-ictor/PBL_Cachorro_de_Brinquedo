module dec_7seg_act (
    input A, B, C,
    output S_a, S_b, S_c, S_d, S_e, S_f, S_g
);

	 wire A_not, B_not, C_not;
	 
	 not(A_not, A);
	 not(B_not, B);
	 not(C_not, C);

    // F = B' + C' -> A
	 
    or SEG_a (S_a, B_not, C_not);

    // F = A + B + C -> B
    
    or SEG_b (S_b, A, B, C);

    // F = B' -> C
	 
    not SEG_c (S_c, B);

    // F = AC'-> D

    and SEG_d (S_d, A, C_not);

    // F = B C + A' B' C' -> E
	 
	 wire F1, F2;
	 
	 and and0 (F1, B, C);
	 and (F2, A_not, B_not, C_not);
    or SEG_e (S_e, F1, F2);

    // F = A + C -> F
	 
    or SEG_f (S_f, A, C);

    // F = B C -> G
	 
    and SEG_g (S_g, B, C);
	 
endmodule