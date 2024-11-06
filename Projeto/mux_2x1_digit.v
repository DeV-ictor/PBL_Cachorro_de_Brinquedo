/*
	Multiplexador responsável por alternar o dígito ativo
	.
	.
	.
*/

module mux_2x1_digit (
  input sel,
  output digit1_out, digit4_out
);

  // Declaração de fios internos para as portas AND e OR
  
  wire not_sel;
  
  not (not_sel, sel);
  
  // Portas AND para selecionar a entrada apropriada
  
  and and_gate0 (digit1_out, 1'b1, not_sel);
  and and_gate1 (digit4_out, 1'b1, sel);

endmodule