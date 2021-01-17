always @ (posedge clk)

  begin
   a <= b & c;
   b <= a ^ d;
   c <= a | b;
  end