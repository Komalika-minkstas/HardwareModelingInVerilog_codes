//Parameterized design :: an N-bit counter

module counter2 (clear, clock, count);
   parameter N=1;
   input clear, clock;
   output reg [0:N] count;
 
   always @ (negedge clock)
    if (clear)
      count <= 0;
    else
      count <= count + 1;
endmodule