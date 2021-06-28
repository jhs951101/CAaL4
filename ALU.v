
module ALU_1(ai,air,ail,bi,ci,s0,s1,s2,s3, fi,cil);

	input ai,air,ail,bi,ci,s0,s1,s2,s3;
	output fi,cil;

	wire AU_di,LU_ei;

	AU u1(ai,bi,s0,s1,ci,AU_di,cil);

	LU u2(ai,bi,s1,s0,LU_ei);

	Mux_4x1 u3(AU_di,LU_ei,air,ail,s3,s2,fi);

endmodule
