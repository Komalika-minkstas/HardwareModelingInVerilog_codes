//4 x 32 register file

module regbank_v1 (rdData1, rdData2, wrData, sr1, sr2, dr write, clk);

   input clk, write;
   input [1:0] sr1, sr2, dr; // Source and destination registers
   input [31:0] wrData;
   output reg [31:0] rdData1, rdData2;
   reg [31:0] R0, R1, R2, R3;

   always @ (*)
     begin
      case(sr1)
        0: rdData1 = R0;
        1: rdData1 = R1;
        2: rdData1 = R2;
        3: rdData1 = R3;
        default: rdData1 = 32'hxxxxxxxx;
     endcase
   end

   always @ (*)
     begin
      case(sr2)
        0: rdData2 = R0;
        1: rdData2 = R1;
        2: rdData2 = R2;
        3: rdData2 = R3;
        default: rdData2 = 32'hxxxxxxxx;
     endcase
   end
 
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