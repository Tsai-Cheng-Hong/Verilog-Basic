module div500(clk,reset,out,a);
input clk,reset;
output out;
output [7:0] a;
reg out;
reg[7:0] a;
  parameter cnt=193;
  always @(clk)
  begin
  if(~reset)
    a=8'd0;
  else
   if(a<cnt-1)
    a=a+8'd1;
   else
    a=0;
  end
   always @(clk)
   begin
   if(~reset)
    out=1'b0;
   else
    if(a==cnt-1)
      out=1;
    else
   out=0;
   end
  endmodule
