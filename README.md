# ECE550-Project1

Name: Jones Larry (Net ID; jl1101 )
Name: Zeyung Yang (Net ID: y139)

Description of Design Implementation
We designed and simulated an ALU using Verilog. At the moment, our ALU have the capacity to carry out addition and subtraction operations.
Since A minus B (A-B) can be thought of as A+(~B)+1, we first inverted every bit of operand B, then I assigned the input cin in the CSA.
Our CSA was built by first designing a full adder module, which was then extrapolated into our RCA module. 
CSA was then implemented with 3 RCA circuits such that one RCA provided the 16 least significant bits while the other two adders computed 
two different computations for the 16 most significant bits, assuming a carry out of 1 and 0 respectively from the 16 least significant RCA. 
A multiplexor was then used to select the correct of the two most significant RCAs based on the actual carry out from the 16 least significant bit RCA. 
Overflow was set to 1 if the carry_in of the last bit is not equal with the carry_out of the last bit during the addition or subtraction.
