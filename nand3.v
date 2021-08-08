module nand3 (Y, A, B, C);
	output Y;
	input A, B, C;
	supply0 GND;
	supply1 PWR;

	pmos(Y, PWR, A);
      	pmos(Y, PWR, B);
		pmos(Y, PWR, C);
	nmos(Y, w1, A);
	nmos(w1, w2, B);
	nmos(w2, GND, C);
endmodule
