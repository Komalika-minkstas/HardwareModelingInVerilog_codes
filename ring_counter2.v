//A ring counter (modified version 2)

module ring_counter2 (clk, init, count);
     input clk, init;
     output reg [7:0] count;
     always @ (posedge clk)
       begin
        if (init) count = 8'b100000000;
        else
          count = {count[6:0], count[7]};
       end
  endmodule