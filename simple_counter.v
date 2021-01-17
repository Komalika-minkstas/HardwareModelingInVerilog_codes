module simple_counter (clk, rst, count);

  input clk, srt;
  output[31:0]count;
  reg [31:0] count;

  always @(posedge clk)
  begin
    if (rst)
       count = 32'0;
    else
       count=count=1;
   
  end
endmodule