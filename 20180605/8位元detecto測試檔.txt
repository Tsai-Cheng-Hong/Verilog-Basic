module SIPO_test;
  reg clock;
  reg clear;
  reg in;
  wire [7:0] out;

  detector2 d1(clock, clear, in, out, q);
  initial
    begin
      in=1'd0;
      clock = 1'b1;
      clear = 1'b1;
      #10 clear= 1'b0;
      #5  in=1'd1;
      #10 in=1'd1;
      #10 in=1'd0;
      #10 in=1'd1;
      #20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd0;

   end
   always #10 clock = ~clock;
 initial
   #100000 $finish;
 endmodule
