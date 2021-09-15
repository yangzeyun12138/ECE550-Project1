module mux21(a,b,out,s);
	input a, b, s;
	output out;
	
	wire out1, out2, m;
	
	not n1(m,s);
	and a1(out1,s,b);
	and a2(out2,m,a);
	or o1(out,out1,out2);
	

endmodule