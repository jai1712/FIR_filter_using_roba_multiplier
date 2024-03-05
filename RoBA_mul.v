module RoBA_mul(clk,rst,A,B,Final_Out);
input clk,rst;
input [31:0]A,B;
output [63:0]Final_Out;
wire [4:0]r1,r2;
wire [31:0]As,Bs,Ar,Br;
wire [63:0]BrA,BrAr,ArB,a1,prod;

sign_det sd(A,B,As,Bs,Sa,Sb);
rounding m1(clk,rst,As,r1,Ar);
rounding m2(clk,rst,Bs,r2,Br);
shifter m3(As,r2,BrA);
shifter m4(Ar,r2,BrAr);
shifter m5(Bs,r1,ArB);
adder m6(BrA,ArB,a1);
subtractor m7(a1,BrAr,prod);
sign_set ss(rst,prod,As,Bs,Sa,Sb,Final_Out);

endmodule
