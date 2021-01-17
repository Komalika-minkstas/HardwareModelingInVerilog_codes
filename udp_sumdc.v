//Full adder carry generation
//Using dont care ("?")

primitive udp_sumdc(sum, a, b, c);
    input a, b, c;
    output cout;
    table 
  // a b c   cout
     0 0 ? : 0;
     0 ? 1 : 0;
     ? 1 0 : 0;
     1 1 ? : 1;
     1 ? 1 : 1;
     ? 1 1 : 1;
   endtable
endprimitive