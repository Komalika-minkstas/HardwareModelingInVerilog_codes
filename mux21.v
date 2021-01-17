// A combinational logic example

module mux21 (in1, in0, s, f);

   input in1, in0, s;
   output reg f;

  always @ (in1 or in0 or s) //comma can be used or whole thing can be replaced by *
     if (s)
       f = in1;
     else
       f = in0;

endmodule