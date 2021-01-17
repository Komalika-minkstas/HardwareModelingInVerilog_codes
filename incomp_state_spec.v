// Another sequential logic example

module incomp_state_spec (curr_state, flag);

   input [0:1] curr_state;
   output reg [0:1] flag;
   //flag = 0; then it would have been a combinational circuit
   always @ (curr_state)
     case (curr_state)
       0, 1 : flag = 2;
       3    : flag = 0;
     endcase

endmodule