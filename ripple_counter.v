//Constructing a 6-bit ripple counter using T flipflop

module ripple_counter (count, clk, clr);
    input clk, clr;
    output [5:0] count;
 
    TFF F0 (count[0], clk, clr);
    TFF F1 (count[1], count[0], clr);
    TFF F2 (count[2], count[1], clr);
    TFF F3 (count[3], count[2], clr);
    TFF F4 (count[4], count[3], clr);
    TFF F5 (count[5], count[4], clr);
endmodule