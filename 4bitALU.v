
module ALU(a,b,s0,s1,s2,s3,c0,il,ir,f,c8);

	input [3:0]a,b;
	input s0, s1, s2, s3, c0, il, ir;
	output [3:0]f;
	output c8;

	wire tem_cil[2:0];

	ALU_1 u1(a[0], a[1], il  , b[0], c0     , s0, s1, s2, s3, f[0], tem_cil[0]);
	ALU_1 u2(a[1], a[2], a[0], b[1], tem_cil[0], s0, s1, s2, s3, f[1], tem_cil[1]);
	ALU_1 u3(a[2], a[3], a[1], b[2], tem_cil[1], s0, s1, s2, s3, f[2], tem_cil[2]);
	ALU_1 u4(a[3], ir  , a[2], b[3], tem_cil[2], s0, s1, s2, s3, f[3], c8);

endmodule
