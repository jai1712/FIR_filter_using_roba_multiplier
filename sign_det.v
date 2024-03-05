module sign_det(A,B,As,Bs,Sa,Sb);
input [31:0]A,B;
output [31:0]As,Bs;
output Sa,Sb;

assign {Sa,As}=A[31]?{1'b1,(~A+1'b1)}:{1'b0,A};
assign {Sb,Bs}=B[31]?{1'b1,(~B+1'b1)}:{1'b0,B};

endmodule
