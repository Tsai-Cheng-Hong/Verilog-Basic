module test;
reg clock;
reg clear;
reg in;
wire [15:0] out;
wire [2:0]  cnt;

detector16_ifr d1(clock,clear,in,out,q,cnt,fr);
initial
begin
in=1'd0;
clock = 1'b1;
clear = 1'b1;
#15 clear=1'b0;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd1;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd0;
#20 in=1'd1;
#20 in=1'd1;
end
   always #10 clock = ~clock;
 initial
   #100000 $finish;
endmodule
