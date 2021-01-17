//Parameterized design:: an N-bit counter

module counter (clear, clock, cpount);

  parameter N=7;
  input clear, clock;
  output [0:N] count; reg [0:N] count;

  always @(negedge clock)
    if (clear)
      count <=0;
    else
      count <= count + 1;

endmodule