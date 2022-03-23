module mux2_lv4(out,a,b,c,d,sel1,sel2);
output out;
input a,b,c,d,sel1,sel2;
not (nsell,sel1);
not (nsel2,sel2);
and (sela,a,nsel1,nsel2);
and (selb,b,sel1,nsel2);
and (selc,c,nsel1,sel2);
and (seld,d,sel1,sel2);
or(out,sela,selb,selc,seld);
endmodule
