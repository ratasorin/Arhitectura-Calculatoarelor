module fac (
    input x, y, carry_in,
    output out, carry_out
);

assign out = x ^ y ^ carry_in;
assign carry_out = (x & y) | (y & carry_in) | (x & carry_in);

endmodule;