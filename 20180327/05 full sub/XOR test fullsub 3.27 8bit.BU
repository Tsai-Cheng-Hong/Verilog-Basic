
module FS_test;
reg [7:0] a,b;
reg cin;
integer ia,ib;
wire [7:0] s;
wire cout;

fullsub8 fs8(s,cout,a,b,cin);
initial begin
a=0;
b=0;
cin=0;

for(ia=0;ia<=255;ia=ia+1)
 begin
  #10 a=ia;
    for(ib=0;ib<=255;ib=ib+1)
     begin
      #10 b=ib;
     end
 end
#10 $finish;

end
endmodule

