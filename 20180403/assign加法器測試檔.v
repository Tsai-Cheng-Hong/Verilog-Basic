module FA_test;
reg[15:0] a,b;
reg Cin;
integer ia,ib;
wire[15:0] s;
wire cout;

fulladd42 fa4(s,cout,a,b,Cin);
initial begin
a=0;
b=0;
Cin=1;
for(ia=0;ia<=15;ia=ia+1)
begin
#10 a=ia;
for (ib=0;ib<=15;ib=ib+1)
begin
#10 b=ib;
end
end
#10 $finish;
end
endmodule
