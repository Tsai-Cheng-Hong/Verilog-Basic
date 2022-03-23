module mux2_lv4test;
reg a,b,c,d,sel1,sel2;
wire out;
mux2_lv4 mux1(out,a,b,c,d,sel1,sel2);
initial
begin
a=0;b=1;c=0;d=1;sel1=0;sel2=0;
#5 b=0;d=0;
#5 b=1;c=1;sel1=1;sel2=1;
#10 a=1;b=1;
#5 d=1;
#5 c=1;sel1=0;sel2=1;
#10 d=1;
#5 b=0;
#5 b=1;c=1;sel1=0;sel2=1;
#10 a=1;
#5 b=0;
#5 b=1;d=0;c=0;sel1=1;sel2=0;
#10 a=1;



#10 $finish;
end
endmodule
