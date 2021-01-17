//swapping a and b-1-race condition using blocking assn

always @ (posedge clk)
  a = b;
always @ (posedge clk)
  b = a;