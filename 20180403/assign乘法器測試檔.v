module T;
  reg [3:0] A;
  reg [3:0] B;
  wire [7:0] S1;

     mul4 U1 (A,B,S1);
  initial
  begin
    #1000
      $finish;
     end

     initial begin

     A = 4'b1111;
     B = 4'b0101;

     #100;
     A = 4'b1100;
     B = 4'b1010;

end
endmodule


