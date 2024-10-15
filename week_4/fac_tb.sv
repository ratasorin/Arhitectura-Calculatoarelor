`include "fac.v"

module fac_tb ();
    reg x, y, carry_in;
    wire carry_out, out;
    fac FAC_TEST (.x(x), .y(y), .carry_in(carry_in), .carry_out(carry_out), .out(out));

    initial begin
        for (integer a = 0; a < 8; a = a + 1) begin 
            {x, y, carry_in} = a;
            $display("x = %b, y = %b, carry_in = %b\n", x, y, carry_in);
        end
    end
endmodule