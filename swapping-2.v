//swapping using non-blocking assn
always @ (posedge clk)
  a <= b;
always @ (posedge clk)
  b <= a;