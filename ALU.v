module ALU (X,Y,Z,Sign,Zero,Carry,Parity,Overflow);

  input [15:0]X,Y;
  output [15:0]Z;
  output Sign, Zero, Carry, Parity, Overflow;
  wire c[3:1];

  assign {Carry,Z} = X + Y; //16-bit addition
  assign Sign = Z[15];
  assign Zero = ~|Z;
  assign Parity = ~^Z;
  assign Overflow = (X[15] & Y[15] & ~Z[15])|(~X[15] & ~Y[15] & Z[15]);

  adder4 A0 (Z[3:0], c[1], X[3:0], Y[3:0], 1'b0);
  adder4 A1 (Z[7:4], c[2], X[7:4], Y[7:4], c[1]);
  adder4 A2 (Z[11:8], c[3], X[11:8], Y[11:8], c[2]);
  adder4 A3 (Z[15:12], Carry, X[15:12], Y[15:12], c[3]);

endmodule