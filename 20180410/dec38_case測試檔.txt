
module T;
  reg[2:0] Q;
  wire[7:0] D;

  dec38_case u1 (Q,D);

  initial
  begin
   #800
    $finish;
   end

   initial begin

    Q = 3'b000;
    #100;
    Q = 3'b001;

    #50;
    Q = 3'b010;

    #50;
    Q = 3'b011;

    #50;
    Q = 3'b100;

    #50;
    Q = 3'b101;

    #50;
    Q = 3'b110;

    #50;
    Q = 3'b111;
  end
 

endmodule
