//4 x 32 bit register file

module regbank_v2 (rdData1, rdData2, wrData, sr1, sr2, dr, write, clk);
   input clk, write;
   input [1:0] sr1, sr2, dr; // Source and destination registers
   input [31:0] wrData;
   output [31:0] rdData1, rdData2;
   reg [31:0] R0, R1, R2, R3;

  assign rdData1 = (sr1 == 0) ? R0 :
                   (sr1 == 1) ? R1 :
                   (sr1 == 2) ? R2 :
                   (sr1 == 3) ? R3 : 0;
 assign rdData1 = (sr1 == 0) ? R0 :
                   (sr1 == 1) ? R1 :
                   (sr1 == 2) ? R2 :
                   (sr1 == 3) ? R3 : 0;
  always @ (posedge clk)
   begin
    if (write)
      case (dr)
        0: R0 <= wrData;
        1: R1 <= wrData;
        2: R2 <= wrData;
        3: R3 <= wrData;
      endcase
   end
endmodule