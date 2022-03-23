module HA1bits_test;
reg a,b;
integer ia,ib;
wire s;
wire cout;

halfadd fa4(s,cout,a,b);
initial begin
a=0;
b=0;

for(ia=0;ia<=1;ia=ia+1)
 begin
  #10 a=ia;
    for(ib=0;ib<=15;ib=ib+1)
     begin
      #10 b=ib;
     end
 end
#10 $finish;

end
endmodule
