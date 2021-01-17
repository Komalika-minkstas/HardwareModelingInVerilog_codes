module generate_set_of_MUX (a,b,f,sel);

  input [3:0] a, b;
  input sel;
  output [3:0] f;
  
  assign f = sel ? a:b;
 
endmodule