module decodificador (
    input A, B, C,
    output SEG_A, SEG_B, SEG_C, SEG_D, SEG_E, SEG_F, SEG_G
);

    assign SEG_A = A & ~B & ~C | ~A & ~B & C;
    assign SEG_B = A & B | A & C;
    assign SEG_C = ~A & B & ~C;
    assign SEG_D = ~B;
    assign SEG_E = C | A & ~B;
    assign SEG_F = ~A & B | ~A & C; 
    assign SEG_G = ~A & ~B & C;

endmodule