module Valvula(alarm_wire, A, B, val_entrada);

    input alarm_wire, A, B;
	 output val_entrada;
	 
	 nor Nor0(ativa0, alarm_wire, A);
	 
	 not Not0(b_barrado, B);
	 and And0(ativa1, alarm_wire, b_barrado);
	 
	 or Or0(val_entrada, ativa0, ativa1);
	 
endmodule
