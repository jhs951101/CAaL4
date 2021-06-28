
`timescale 1ns/100ps
`include "ALU.v"

module ALU_tb;

reg [3:0]a,b;
reg s0, s1, s2, s3, c0, il, ir;
wire [3:0]f;
wire c8;

ALU obj(a,b,s0,s1,s2,s3,c0,il,ir,f,c8);

initial begin
	il = 0;
	ir = 0;
	a = 1;
	b = 2;
end

always begin
	#10 a = 3;
	#10 a = 5;
	#10 a = 7;
	#10 a = 9;
	#10 a = 1;
end

always begin
	#10 b = 4;
	#10 b = 6;
	#10 b = 8;
	#10 b = 10;
	#10 b = 2;
end

initial begin
	s3 = 0; // AU movement

	#400 s3 = 0; // LU movement

	#250 s3 = 1; // LSL movement

	#50 s3 = 1; // LSR movement
end

initial begin
	s2 = 0; // AU movement

	#400 s2 = 1; // LU movement

	#250 s2 = 0; // LSL movement

	#50 s2 = 1; // LSR movement
end

initial begin
	s1 = 0;
	#50 s1 = 0;
	#50 s1 = 0;
	#50 s1 = 0;
	#50 s1 = 1;
	#50 s1 = 1;
	#50 s1 = 1;
	#50 s1 = 1; // AU movement

	#50 s1 = 0;
	#50 s1 = 0; 
	#50 s1 = 1; 
	#50 s1 = 1; // LU movement
end

initial begin
	s0 = 0;
	#50 s0 = 0;
	#50 s0 = 1;
	#50 s0 = 1;
	#50 s0 = 0;
	#50 s0 = 0;
	#50 s0 = 1;
	#50 s0 = 1; // AU movement

	#50 s0 = 0;
	#50 s0 = 1; 
	#50 s0 = 0;
	#50 s0 = 1; // LU movement
end
initial begin
	c0 = 0;
	#50 c0 = 1;
	#50 c0 = 0;
	#50 c0 = 1;
	#50 c0 = 0;
	#50 c0 = 1;
	#50 c0 = 0;
	#50 c0 = 1; // AU movement

	#50 c0 = 0; // LU movement
end

endmodule
