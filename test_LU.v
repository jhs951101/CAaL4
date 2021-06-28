`timescale 1ns/100ps
`include "LU.v"

module LU_tb;

reg ai,bi,s0,s1;
wire ei;

LU obj(ai, bi, s1, s0, ei);

initial begin
	bi = 0;
	s0 = 0;
	s1 = 0;
end

initial begin
	ai = 0;
	#80 ai = 1;
end

always begin	
	#40 bi = 1;
	#40 bi = 0;
end

always begin
	#20 s0 = 1;
	#20 s0 = 0;
end

always begin
	#10 s1 = 1;
	#10 s1 = 0;
end

endmodule
