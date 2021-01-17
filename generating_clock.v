module generating_clock;

   output reg clk;

  initial 
    clk = 1b'0; //initialised to 0 at time 0

  always
   #5 clk = `clk; // Toggle after time 5 units

  initial
   #500 $finish;

endmodule
