
module LU(ai, bi, s1, s0, ei);

	input ai, bi, s1, s0;
	output ei;
	wire i0, i1, i2, i3;

	and(i0, ai, bi);
	or(i1, ai, bi);
	xor(i2, ai, bi);
	not(i3, ai);

	Mux_4x1 u1(i0,i1,i2,i3,s1,s0,ei);

endmodule
