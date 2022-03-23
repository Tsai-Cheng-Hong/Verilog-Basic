module cnt_test;
  reg Clk;
  reg Clr;
  wire [3:0] Q1,Q2;

  cnt d1(Clk,Clr,Q1,Q2);
  initial
  begin

  Clk = 1'b1;
  Clr = 1'b1;
  #20 Clr = 1'b0;

 end
 always #20 Clk = ~Clk;
 initial
  #1000000 $finish;
  endmodule
