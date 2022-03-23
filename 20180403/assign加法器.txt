module fulladd42(sum, c_out, a, b, c_in);
output [15:0] sum;
output c_out;
input[15:0] a, b;
input c_in;
assign {c_out, sum}=a+b+c_in;
endmodule
