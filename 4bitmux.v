module Mux_4x1(l0,l1,l2,l3,s1,s0,o);

	input l0, l1, l2, l3, s1, s0;
	output o;
	wire f0, f1, f2, f3;
	wire not_s0, not_s1;

	not(not_s0, s0);
	not(not_s1, s1);

	and(f0, l0, not_s0, not_s1);
	and(f1, l1, s0, not_s1);
	and(f2, l2, not_s0, s1);
	and(f3, l3, s0, s1);

	or(o, f0, f1, f2, f3);

endmodule
