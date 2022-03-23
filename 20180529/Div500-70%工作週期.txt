module div500(clk,reset,out,a);
input clk,reset;
output out;
output [9:0] a;
reg out;
reg[9:0] a;
  parameter cnt=500;
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
    if(a<=349)
      out=1;
    else
   out=0;

   end
  endmodule
