module rounding(clk,rst,in,count,power);
  input clk,rst;
  input [31:0]in;
  output reg [4:0]count;
  output [31:0]power;
  
  
  assign power=2**count;
  
  always@(posedge clk)
  begin
    if(rst)
      count=5'd0;
		else if(in[31]==1)
      count=5'd31;
      else if(in[30]==1)
      count=5'd30;
      else if(in[29]==1)
      count=5'd29;
      else if(in[28]==1)
      count=5'd28;
      else if(in[27]==1)
      count=5'd27;
      else if(in[26]==1)
      count=5'd26;
      else if(in[25]==1)
      count=5'd25;
      else if(in[24]==1)
      count=5'd24;
		else if(in[23]==1)
      count=5'd23;
      else if(in[22]==1)
      count=5'd22;
      else if(in[21]==1)
      count=5'd21;
      else if(in[20]==1)
      count=5'd20;
      else if(in[19]==1)
      count=5'd19;
      else if(in[18]==1)
      count=5'd18;
      else if(in[17]==1)
      count=5'd17;
      else if(in[16]==1)
      count=5'd16;
		else if(in[15]==1)
      count=5'd15;
      else if(in[14]==1)
      count=5'd14;
      else if(in[13]==1)
      count=5'd13;
      else if(in[12]==1)
      count=5'd12;
      else if(in[11]==1)
      count=5'd11;
      else if(in[10]==1)
      count=5'd10;
      else if(in[9]==1)
      count=5'd9;
      else if(in[8]==1)
      count=5'd8;
      else if(in[7]==1)
      count=5'd7;
      else if(in[6]==1)
      count=5'd6;
      else if(in[5]==1)
      count=5'd5;
      else if(in[4]==1)
      count=5'd4;
      else if(in[3]==1)
      count=5'd3;
      else if(in[2]==1)
      count=5'd2;
      else if(in[1]==1)
      count=5'd1;
      else if(in[0]==1)
      count=5'd0;
    end
  endmodule