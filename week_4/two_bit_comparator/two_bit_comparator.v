module two_bit_comparator (
  input [1:0] x, y,
  output eq, gt, lt
);
  
  assign eq = (~x[0] & ~y[0] & ~x[1] & ~y[1]) | (x[0] & y[0] & ~x[1] & ~y[1]) | (~x[0] & ~y[0] & x[1] & y[1]) | (x[0] & y[0] & x[1] & y[1]);
  
  assign gt = (~y[1] & x[1]) | (x[0] & ~y[1] & ~y[0]) | (x[1] & x[0] & y[1]);
  assign lt = ~eq & ~gt;
  
endmodule