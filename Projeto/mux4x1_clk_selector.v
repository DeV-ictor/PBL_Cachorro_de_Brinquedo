module mux4x1_clk_selector (
    input sel0, // Chave de Seleção 0
    input sel1, // Chave de Seleção 1
    input in0, // Entrada 0
    input in1, // Entrada 1
    input in2, // Entrada 2 
    input in3, // Entrada 3 
    output out // Saída
);

    // Declaração de "wires" (conexões internas)
	 
    wire not_sel0, not_sel1;
    wire sel0_and_sel1, sel0_and_not_sel1, not_sel0_and_sel1, not_sel0_and_not_sel1;
    wire in0_sel, in1_sel, in2_sel, in3_sel;

    // Portas NOT para as chaves de seleção
	 
    not not_gate0 (not_sel0, sel0);
    not not_gate1 (not_sel1, sel1);

    // Portas AND para combinar as chaves de seleção
	 
    and and_gate1 (sel0_and_sel1, sel0, sel1);
    and and_gate2 (sel0_and_not_sel1, sel0, not_sel1);
    and and_gate3 (not_sel0_and_sel1, not_sel0, sel1);
    and and_gate4 (not_sel0_and_not_sel1, not_sel0, not_sel1);

    // Portas AND para selecionar as entradas
	 
    and and_gate5 (in0_sel, in0, not_sel0_and_not_sel1);
    and and_gate6 (in1_sel, in1, not_sel0_and_sel1);
    and and_gate7 (in2_sel, in2, sel0_and_not_sel1);
    and and_gate8 (in3_sel, in3, sel0_and_sel1);

    // Porta OR para combinar as saídas dos ANDs
	 
    or or_gate (out, in0_sel, in1_sel, in2_sel, in3_sel);

endmodule