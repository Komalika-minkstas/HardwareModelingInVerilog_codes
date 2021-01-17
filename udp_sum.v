//Full adder sum generation using UDP
primitive udp_sum (sum, a, b, c);
    input a, b, c;
    output cout;
    table 
  // a b c   cout
     0 0 0 : 0;
     0 0 1 : 0;
     0 1 0 : 0;
     0 1 1 : 1;
     1 0 0 : 0;
     1 0 1 : 1;
     1 1 0 : 1;
     1 1 1 : 1;
   endtable
endprimitive