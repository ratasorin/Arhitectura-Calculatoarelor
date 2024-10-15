`include "../fac/fac.v"

module two_bit_fac (
  input [1:0] a, b, 
  input carry_in,
  output [1:0]out,
  output carry_out
);
  
  wire tmp_carry;
  fac F1 (
    .x(a[0]), .y(b[0]), .carry_in(carry_in), .out(out[0]), .carry_out(tmp_carry)
  );
  
  fac F2 (
    .x(a[1]), .y(b[1]), .carry_in(tmp_carry), .out(out[1]), .carry_out(carry_out)
  );
  
endmodule