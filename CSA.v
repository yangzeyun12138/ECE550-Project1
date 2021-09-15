module CSA(data_operandA, data_operandB,cin, cout,sum,overflow);

   input [31:0] data_operandA, data_operandB;
	input cin;
   output cout,overflow;
   output [31:0]sum;

   // YOUR CODE HERE //
	
	wire [15:0] sum1;
	wire [15:0] sum2;
	wire c00, c01, c02, c03;
	wire c11, c10, c12, c13;
	wire c20, c21, c22, c23;
	wire o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12;
	
	
	
	// 0 - 15 bit RCA
	RCA RCA_0(data_operandA[0],data_operandB[0],data_operandA[1],data_operandB[1],data_operandA[2],data_operandB[2],data_operandA[3],data_operandB[3],cin,c00,sum[0],sum[1],sum[2],sum[3],o1);
	RCA RCA_1(data_operandA[4],data_operandB[4],data_operandA[5],data_operandB[5],data_operandA[6],data_operandB[6],data_operandA[7],data_operandB[7],c00,c01,sum[4],sum[5],sum[6],sum[7],o2);
   RCA RCA_2(data_operandA[8],data_operandB[8],data_operandA[9],data_operandB[9],data_operandA[10],data_operandB[10],data_operandA[11],data_operandB[11],c01,c02,sum[8],sum[9],sum[10],sum[11],o3);
	RCA RCA_3(data_operandA[12],data_operandB[12],data_operandA[13],data_operandB[13],data_operandA[14],data_operandB[14],data_operandA[15],data_operandB[15],c02,c03,sum[12],sum[13],sum[14],sum[15],o4);
	
	// 16 - 31 bit RCA with carry in 0
	RCA RCA_00(data_operandA[16],data_operandB[16],data_operandA[17],data_operandB[17],data_operandA[18],data_operandB[18],data_operandA[19],data_operandB[19],0,c10,sum1[0],sum1[1],sum1[2],sum1[3],o5);
	RCA RCA_01(data_operandA[20],data_operandB[20],data_operandA[21],data_operandB[21],data_operandA[22],data_operandB[22],data_operandA[23],data_operandB[23],c10,c11,sum1[4],sum1[5],sum1[6],sum1[7],o6);
   RCA RCA_02(data_operandA[24],data_operandB[24],data_operandA[25],data_operandB[25],data_operandA[26],data_operandB[26],data_operandA[27],data_operandB[27],c11,c12,sum1[8],sum1[9],sum1[10],sum1[11],o7);
	RCA RCA_03(data_operandA[28],data_operandB[28],data_operandA[29],data_operandB[29],data_operandA[30],data_operandB[30],data_operandA[31],data_operandB[31],c12,c13,sum1[12],sum1[13],sum1[14],sum1[15],o8);
	
	// 16 - 31 bit RCA with carry in 1
	RCA RCA_10(data_operandA[16],data_operandB[16],data_operandA[17],data_operandB[17],data_operandA[18],data_operandB[18],data_operandA[19],data_operandB[19],1,c20,sum2[0],sum2[1],sum2[2],sum2[3],o9);
	RCA RCA_11(data_operandA[20],data_operandB[20],data_operandA[21],data_operandB[21],data_operandA[22],data_operandB[22],data_operandA[23],data_operandB[23],c20,c21,sum2[4],sum2[5],sum2[6],sum2[7],o10);
   RCA RCA_12(data_operandA[24],data_operandB[24],data_operandA[25],data_operandB[25],data_operandA[26],data_operandB[26],data_operandA[27],data_operandB[27],c21,c22,sum2[8],sum2[9],sum2[10],sum2[11],o11);
	RCA RCA_13(data_operandA[28],data_operandB[28],data_operandA[29],data_operandB[29],data_operandA[30],data_operandB[30],data_operandA[31],data_operandB[31],c22,c23,sum2[12],sum2[13],sum2[14],sum2[15],o12);
	
	
	mux21 mux_a(c13,c23,cout,c03);
	
	mux21 mux0(sum1[0],sum2[0],sum[16],c03);
	mux21 mux1(sum1[1],sum2[1],sum[17],c03);
	mux21 mux2(sum1[2],sum2[2],sum[18],c03);
	mux21 mux3(sum1[3],sum2[3],sum[19],c03);
	mux21 mux4(sum1[4],sum2[4],sum[20],c03);
	mux21 mux5(sum1[5],sum2[5],sum[21],c03);
	mux21 mux6(sum1[6],sum2[6],sum[22],c03);
	mux21 mux7(sum1[7],sum2[7],sum[23],c03);
	mux21 mux8(sum1[8],sum2[8],sum[24],c03);
	mux21 mux9(sum1[9],sum2[9],sum[25],c03);
	mux21 mux10(sum1[10],sum2[10],sum[26],c03);
	mux21 mux11(sum1[11],sum2[11],sum[27],c03);
	mux21 mux12(sum1[12],sum2[12],sum[28],c03);
	mux21 mux13(sum1[13],sum2[13],sum[29],c03);
	mux21 mux14(sum1[14],sum2[14],sum[30],c03);
	mux21 mux15(sum1[15],sum2[15],sum[31],c03);
	
	mux21 mux_of(o8,o12,overflow,c03);
	
endmodule
