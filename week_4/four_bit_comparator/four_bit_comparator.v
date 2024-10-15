`include "../two_bit_comparator/two_bit_comparator.v"

module four_bit_comparator (
    input [3:0] a, b,
    output eq, lt, gt
);

wire first_2_eq, first_2_lt, first_2_gt;
two_bit_comparator COMPARE_FIRST_2_BITS (
    .x(a[3:2]), .y(b[3:2]), .eq(first_2_eq), .lt(first_2_lt), .gt(first_2_gt)
);

wire last_2_eq, last_2_lt, last_2_gt;
two_bit_comparator COMPARE_LAST_2_BITS (
    .x(a[1:0]), .y(b[1:0]), .eq(last_2_eq), .lt(last_2_lt), .gt(last_2_gt)
);

assign eq = first_2_eq & last_2_eq;
assign gt = first_2_gt | (first_2_eq & last_2_gt);
assign lt = ~eq & ~gt;

endmodule