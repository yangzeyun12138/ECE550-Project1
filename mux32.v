module mux32(a,b,out,s);
	input [31:0] a,b;
	input s;
	input [31:0] out;
	
	genvar i;
 generate
  for (i = 0; i < 32; i = i + 1) begin: Not_Series
   mux21 mux_what(a[i],b[i],out[i],s);
  end
 endgenerate
endmodule