`include "../full_adder_cell/fac.v"

module four_bit_c1_adder (
    input [3:0] a, b,
    output [3:0] z
);
    reg carry_around = 0;
    wire carry_0;
    fac ADD_BIT_0 (.x(a[0]), .y(b[0]), .carry_in(carry_around), .out(z[0]), .carry_out(carry_0));

    wire carry_1;
    fac ADD_BIT_1 (.x(a[1]), .y(b[1]), .carry_in(carry_0), .out(z[1]), .carry_out(carry_1));

    wire carry_2;
    fac ADD_BIT_2 (.x(a[2]), .y(b[2]), .carry_in(carry_1), .out(z[2]), .carry_out(carry_2));

    wire carry_3;
    fac ADD_BIT_3 (.x(a[3]), .y(b[3]), .carry_in(carry_2), .out(z[3]), .carry_out(carry_around));
endmodule