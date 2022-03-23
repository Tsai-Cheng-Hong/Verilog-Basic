module div90(clk,reset,out,a);
input clk,reset;
output out;
output [6:0] a;
reg out;
reg[6:0] a;
  parameter cnt=90;
  always @(clk)
  begin
  if(reset)
    a=0;
  else
   if(a<cnt-1)
    a=a+1;
   else
    a=0;
  end
   always @(clk)
   begin
   if(reset)
    out=1'b0;
   else
    if(a==0)
      out=~out;
    else
   out=out;
   end
  endmodule
