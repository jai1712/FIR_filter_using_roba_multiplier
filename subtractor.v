module subtractor(a,b,diff);
input [63:0]a,b;
output [63:0]diff;

assign diff=a-b;

endmodule