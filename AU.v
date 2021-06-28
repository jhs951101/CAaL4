
module AU(ai,bi,s0,s1,ci,di,cil);

	input ai,bi,s0,s1,ci;
	output di,cil;

	wire bi_not, mux_o;

	not(bi_not, bi);

	Mux_4x1 u1(bi,bi_not,0,1,s1,s0,mux_o);

	FullAdder u2(ai,mux_o,ci,di,cil);

endmodule
