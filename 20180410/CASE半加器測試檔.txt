
module HAlbits_test;
reg A,B;
integer ia,ib;
wire S;
wire Co;
 
half t1(A,B,Co,S);
  initial begin
  A=0;
  B=0;

  for (ia=0;ia<=1;ia=ia+1)
  begin
  #10 A=ia;
   for (ib=0;ib<=15;ib=ib+1)
   begin
    #10 B=ib;
    end
  end
#10 $finish;
end
endmodule
