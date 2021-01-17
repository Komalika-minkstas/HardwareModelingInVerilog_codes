//Another example
module multi_edge_clk2 (a, b, c, d, f. clk);
    input clk;
    input [7:0] a, b, c, d;
    output reg [7:0] f;
    
    always @ (posedge clk)
     c <= a + b;
    always @ (negedge clk)
     f <= c - d;
 
endmodule