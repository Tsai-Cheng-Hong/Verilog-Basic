
module(A,B,sel);
input A,B,Sel;
output fo;
not inv_sel(selb,sel);
and and1(selb_and_A,selb,A);
and and2(B_and_sel,B,sel);
or or1(selb_and_A_or_B_and_sel,selb_and_A,B_and_sel);
endmodule
