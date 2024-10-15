module fac (
    input x, y, carry_in,
    output out, carry_out
);

assign out = x & y;
assign carry_out = x ^ y;

endmodule;