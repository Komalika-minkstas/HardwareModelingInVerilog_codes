module PIPO1 (dout, din, ld, clk);
   input [15:0] din;
   input ld, clk;
   output reg [15:0] dout;
   
   always @ (posedge clk)
      if (ld) dout <= din;
endmodule

module ADD (out, in1, in2);
    input [15:0] in1, in2;
    output reg [15:0] out;
 
 always @ (*)
   out = in1+in2;
endmodule