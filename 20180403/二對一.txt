module mux2_lv2(out,a,b,sel);
output out;
input a,b,sel;
not (nsel,sel);
and (sela,a,nsel);
and (selb,b,sel);
or(out,sela,selb);
endmodule
