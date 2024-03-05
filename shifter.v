module shifter(in,r,out);
input [31:0]in;
input [4:0]r;
output [63:0]out;

assign out=({32'b0,in})<<r;

endmodule