
module FS_test;
reg a,b,cin;
fullsub2 U0(sum,cout,a,b,cin);
initial begin
a=0;
b=0;
cin=0;
#5 cin=0;
#5 cin=0;b=1;
#5 cin=0;
#5 a=1;b=0;cin=0;
#5 cin=0;
#5 cin=0;b=0;cin=0;
#5 cin=0;
#5 cin=0;b=1;
#5 cin=0;
#10 $finish;

end
endmodule
