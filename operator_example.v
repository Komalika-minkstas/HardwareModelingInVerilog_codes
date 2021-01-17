module operator_example (x,y,f1,f2);

  input x,y;
  output f1,f2;
  wire [9:0] x,y; wire [4:0] f1; wire f2;

  assign f1=x[4;0] & y[4:0];
  assign f2=x[2] | ~f1[3];
  assign f2=~& x;
  assign f1= f2 ? x[9:5] : x[4:0];

endmodule