
module halfadd(sum,c_out,a,b);

output	sum,c_out;
input	a,	b;
xor(sum,a,b);
and(c_out,a,b);

endmodule
