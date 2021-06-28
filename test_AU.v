`timescale 1ns/100ps
`include "AU.v"

module AU_tb;

reg ai,bi,s0,s1,ci;
wire di,cil;

AU obj(ai,bi,s0,s1,ci,di,cil);

initial begin
	ai = 0;
	bi = 0;
end

always begin
	#10 ai = 1;
	#10 ai = 0;
	#10 ai = 1;
	#10 ai = 0;
end

always begin
	#10 bi = 0;
	#10 bi = 1;
	#10 bi = 1;
	#10 ai = 0;

end

initial begin
	s0 = 0;
	#50 s0 = 0;
	#50 s0 = 1;
	#50 s0 = 1;
end

initial begin
	s1 = 0;
	#50 s1 = 1;
	#50 s1 = 0;
	#50 s1 = 1;
end

initial begin
	ci = 0;
	#50 ci = 0;
	#50 ci = 1;
	#50 ci = 1;
end

endmodule
