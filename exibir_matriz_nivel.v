module exibir_matriz_nivel(A, M, B, a7, b7, c7, d7, e7, f7, g7);
	input A, M, B;
	output a7, b7, c7, d7, e7, f7, g7;
	
	not not0(not_a, A);
	not not1(not_m, M);
	not not2(not_b, B);
	
	// LED (A)
	and and0(aux0, not_a, not_m);
	and and1(aux1, not_a, B);
	or Or0(a7, aux0, aux1);

	// LED (B)
	not (b7, b7);
	
	// LED (C)
	not (c7, c7);
	
	// LED (D)
	and And2(d7, not_a, not_b, not_m);
	
	// LED (E)
	and and2(aux2, not_a, not_m);
	and and3(aux3, M, B);
	or Or1(e7, aux2, aux3);
	
	// LED (F)
	and and4(aux4, not_a, not_m);
	and and5(aux5, M, B);
	or Or2(f7, aux4, aux5);
	
	// LED (G)
	and and6(g7, not_a, not_m);
	

endmodule
