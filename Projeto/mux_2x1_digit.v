/*
	Multiplexador responsável por alternar o dígito ativo
	.
	.
	.
*/

module mux_2x1_digit (
  input sel, onoff,
  output digit1_out, digit4_out
);

  // Declaração de fios internos para as portas AND e OR
  
  wire not_sel, onoff_not;
  
  not (not_sel, sel);
  not (onoff_not, onoff);
  
  // Portas AND para selecionar a entrada apropriada
  
  or and_gate0 (digit1_out, onoff_not, not_sel);
  or and_gate1 (digit4_out, onoff_not, sel);

endmodule