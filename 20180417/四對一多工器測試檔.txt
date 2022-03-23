module mux_test;
reg[3:0] A,B,C,D;
reg[1:0] S;
wire[3:0] Y2;
mux u1(A,B,C,D,S,Y2);
initial
begin
      #800
      $finish;
      end

     initial begin
     A=4'b0000; B=4'b0000; C=4'b0000; D=4'b0000;
      #10
     A=4'b0110; B=4'b1011; C=4'b1101; D=4'b0111;
     #10
     A=4'b0101; B=4'b1110; C=4'b1000; D=4'b1000;
     #10
     A=4'b0111; B=4'b0000; C=4'b0101; D=4'b1101;
     #10
     A=4'b1101; B=4'b0010; C=4'b1000; D=4'b1100;
     #10
     A=4'b0001; B=4'b0110; C=4'b1010; D=4'b0001;
     #10
     S=2'b00;
     #10
     S=2'b01;
     #10
     S=2'b10;
     #10
     S=2'b11;

end
endmodule
