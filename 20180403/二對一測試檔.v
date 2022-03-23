module mux2_lv2test;
reg a,b,sel;
wire out;
mux2_lv2 mux1(out,a,b,sel);
initial
begin
a=0;b=1;sel=0;
#5 b=0;
#5 b=1;sel=1;
#10 a=1;
#5 b=0;
#5 b=1;sel=0;
#10 a=1;
#5 b=0;
#5 b=1;sel=1;
#10 a=1;
#5 b=0;
#5 b=1;sel=0;
#10 a=1;

#10 $finish;
end
endmodule
