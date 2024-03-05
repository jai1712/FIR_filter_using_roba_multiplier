module sign_set(rst,prod,As,Bs,Sa,Sb,p);
input rst;
input [63:0]prod;
input [31:0]As,Bs; 
input Sa,Sb;
output reg [63:0]p;
reg [63:0]out;

always@(prod,Sa,Sb)
begin
if(rst)
begin
out=64'b0;
p=64'b0;
end
else
begin                                                                                                                                                                                                                                                                                                                                                                                                                                            p=As*Bs;
case ({Sa,Sb})
2'b00:out=prod;
2'b01:out=~prod+1'b1;
2'b10:out=~prod+1'b1;
2'b11:out=prod; 
endcase
end
end
endmodule
