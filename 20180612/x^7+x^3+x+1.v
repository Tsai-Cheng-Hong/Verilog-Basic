module lfsr(Clk,Clr,Q);
input Clk,Clr;
output [7:1]Q;
reg[7:1]Q;

always@(posedge Clk)
  if(Clr)
    Q=3'b100;
    else
      Q={Q[6:1],Q[7]^Q[3]^Q[1]};

endmodule
