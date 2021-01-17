module test_sequence;
   reg clk, x, reset;
   seq_detector SEQ (x, clk, reset, z);

   initial
     begin
       $dumpfile ("sequence.vcd"); $dumpvars (0, test_sequence);
       clk = 1'b0;  reset = 1'b1;
       #15 reset = 1'b0;
    end
  
   always #5clk = ~clk;

   initial
     begin
       #12 x=0; #10 x=0; #10 x=1; #10 x=1;
       #10 x=0; #10 x=1; #10 x=1; #10 x=0;
       #10 x=0; #10 x=1; #10 x=1; #10 x=0;
       #10 $finish;
    end
endmodule