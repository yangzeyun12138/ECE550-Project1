module full_adder (a, b, cin, s, cout);

	input a, b, cin;
	output s, cout;
  
	wire m1, m2, m3;
  
	xor xor_1(m1, a, b);
	and and_1(m2, m1, cin);
	and and_2(m3, a, b);
	xor xor_2(s, m1, cin);
	or or_1(cout, m2, m3);
	
endmodule
