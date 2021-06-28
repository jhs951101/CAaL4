
`timescale 1ns/100ps
`include "ALU.v"

module ALU_1_tb;

reg ai,air,ail,bi,ci,s0,s1,s2,s3;
wire fi,cil;

ALU_1 obj(ai,air,ail,bi,ci,s0,s1,s2,s3, fi,cil);

initial begin
	air = 0;
	ail = 0;
	bi = 0;
	ci = 0;
	s0 = 0;
	s1 = 0;
	s2 = 0;
	s3 = 0;
end

initial begin
	ai = 0;
	#2560 ai = 1;
end

always begin
	
	#1280 air = 1;
	#1280 air = 0;
end

always begin
	#640 ail = 1;
	#640 ail = 0;
end

always begin
	#320 bi = 1;
	#320 bi = 0;
end

always begin
	#160 ci = 1;
	#160 ci = 0;
end

always begin
	#80 s0 = 1;
	#80 s0 = 0;
end

always begin
	#40 s1 = 1;
	#40 s1 = 0;
end

always begin
	#20 s2 = 1;
	#20 s2 = 0;
end

initial begin
	#10 s3 = 1;
	#10 s3 = 0;
end

endmodule
