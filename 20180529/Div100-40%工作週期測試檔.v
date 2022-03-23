module div100_test;
  reg clk;
  reg reset;
  wire [6:0] a;

  div90 d1(clk,reset,out,a);
  initial
  begin
  clk =  1'b1;
  reset   =  1'b1;
  #15 reset =  1'b0;
 end
 always #10 clk = ~clk;
 
 initial
  #1000000 $finish;
  endmodule
