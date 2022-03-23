
module T;
  reg[7:0] Q;
  wire[2:0] D;

  dec38_case u1 (Q,D);

  initial
  begin
   #800
    $finish;
   end

   initial begin

    Q = 8'b00000000;
    #100;
    Q = 8'b00000001;

    #50;
    Q = 8'b00000010;

    #50;
    Q = 8'b00000100;

    #50;
    Q = 8'b00001000;

    #50;
    Q = 8'b00010000;

    #50;
    Q = 8'b00100000;

    #50;
    Q = 8'b01000000;

    #50;
    Q = 8'b10000000;

  end
 

endmodule
