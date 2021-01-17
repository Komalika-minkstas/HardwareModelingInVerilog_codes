//using multiple edges of same clock

module multi_edge_clk (a, b, f, clk);
  input a, b, clk;
  output reg f; reg t;
  
  always @ (posedge clk)
    f <= t & b;
  always @ (negedge clk)
    t <= a | b;
endmodule