module udcounter_test;
  reg clock;
  reg reset;
  reg up;
  wire [3:0] count;

  udcounter d1(reset, up, clock, count);
  initial
    begin
      up=1;
      clock = 1'b1;
      reset = 1'b1;
      #5 reset= 1'b0;
      #200 up=0;
      #300 up=1;
   end
   always #10 clock = ~clock;
 initial
   #100000 $finish;
 endmodule
