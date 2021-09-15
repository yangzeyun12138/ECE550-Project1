module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire [31:0] invertedB,B_input;
	Not32 not32(data_operandB,invertedB);
	assign B_input[31:0] = ctrl_ALUopcode[0] ? invertedB[31:0] : data_operandB[31:0];  //  add/sub
	
	CSA CSA_1(data_operandA,B_input,ctrl_ALUopcode[0],cout,data_result,overflow);
	
endmodule
