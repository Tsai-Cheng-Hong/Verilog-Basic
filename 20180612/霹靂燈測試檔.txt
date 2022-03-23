module pili_1_test;
  reg Clk;
  reg Clr;
  wire A,B,C,D,E,F;


  pili_1 d1(Clk,Clr,A,B,C,D,E,F);
  initial
  begin
  
    Clk = 1'b1;
    Clr = 1'b1;
    #20 Clr = 1'b0;


  end
  always #10 Clk = ~Clk;
initial
  #100000 $finish;
endmodule
