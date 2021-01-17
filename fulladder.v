//Full Adder using Transistor Level Modeling

module fulladder (sum, cout, a, b, cin);
   
   input a, b, cin;
   output sum, cout;
   fa_sum SUM (sum, a, b, cin);
   fa_carry CARRY (cout, a, b, cin);

endmodule

module fa_carry (cout, a, b, cin);

  input a, b, cin;
  output cout;

  wire t1, t2, t3, t4, t5;

  cmosnand N1 (t1, a, b);
  cmosnand N2 (t2, a, cin);
  cmosnand N3 (t3, b, cin);
  cmosnand N4 (t4, t1, t2);
  cmosnand N5 (t5, t4, t4);
  cmosnand N6 (cout, t5, t3);

endmodule

module myxor2 (out, a, b)

   input a, b;
   output out;
   wire t1, t2, t3, t4;

  cmosnand N1 (t1, a, a);
  cmosnand N2 (t2, b, b);
  cmosnand N3 (t3, a, t2);
  cmosnand N4 (t4, b, t1);
  cmosnand N5 (t5, t3, t4);

endmodule

module fa_sum (sum, a, b, cin);
  
  input a, b, cin;
  output sum;
  wire t1, t2;

  myxor X1 (t1, a, b);
  myxor X2 (sum, t1, cin);

endmodule

module cmosnand (f, x, y);

  input x, y;
  output f;
  supply1 vdd;
  supply0 gnd;
  wire a;

  pmos p1 (f, vdd, x);
  pmos p2 (f, vdd, y);
  nmos n1 (f, a, x);
  nmos n2 (a, gnd, y);

endmodule