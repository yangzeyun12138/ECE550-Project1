module RCA (a0,b0,a1,b1,a2,b2,a3,b3,cin,cout,s0,s1,s2,s3,overflow);

	input a0,b0,a1,b1,a2,b2,a3,b3,cin;
	output cout,s0,s1,s2,s3,overflow;
  
	wire c0, c1, c2;
  
	full_adder full_adder_0(a0,b0,cin,s0,c0);
	full_adder full_adder_1(a1,b1,c0,s1,c1);
	full_adder full_adder_2(a2,b2,c1,s2,c2);
	full_adder full_adder_3(a3,b3,c2,s3,cout);
	
	xor xor1(overflow,c2,cout); 
	
endmodule