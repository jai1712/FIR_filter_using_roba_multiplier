module fir(clk,rst,x,y,h0,h1,h2,h3);
  input [31:0]x,h0,h1,h2,h3;
  output [63:0]y;
  input clk,rst;
  wire [63:0]w1,w2,w3,w4,q1,s1,q2,s2,q3,q4,q5,q6,q7,q8,q9;

RoBA_mul m1(clk,rst,x,h0,w1);//assign w1=x*h0;
dff64 b1(w1,clk,q1,rst);
dff64 b2({32'b0000,x},clk,q2,rst);
dff64 b3(q2,clk,q3,rst);
RoBA_mul m2(clk,rst,q3[31:0],h1,w2);//assign w2=q3*h1;
assign s1=q1+w2;
dff64 b4(s1,clk,q4,rst);
dff64 b5(q3,clk,q5,rst);
dff64 b6(q5,clk,q6,rst);
RoBA_mul m3(clk,rst,q6[31:0],h2,w3);//assign w3=q6*h2;
assign s2=q4+w3;
dff64 b7(s2,clk,q7,rst);
dff64 b8(q6,clk,q8,rst);
dff64 b9(q8,clk,q9,rst);
RoBA_mul m4(clk,rst,q9[31:0],h3,w4);//assign w4=q9*h3;
assign y=q7+w4;
endmodule 