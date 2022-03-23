module div10(Clk_i,Clr,Clk_o);
input Clk_i,Clr;
output Clk_o;
reg Clk_o;
reg [3:0]Q;

always @(posedge Clk_i or posedge Clr)
  if(Clr||Q==9) Q=0;
  else         Q=Q+1;

always@(Q)
  if(Q<=4) Clk_o = 0;
  else     Clk_o = 1;

  endmodule
