module dff64(d,clk,q,rst);
  input [63:0]d;
  input clk,rst;
  output reg [63:0]q;
  always@(posedge clk)
begin
  if(rst)
    q<=64'b0;
  else
    q<=d;
  end

endmodule

