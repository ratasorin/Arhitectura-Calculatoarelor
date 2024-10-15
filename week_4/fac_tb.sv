`include "fac.v"

module fac_tb ();
    reg x, y, carry_in;
    wire carry_out, out;
    fac FAC_TEST (.x(x), .y(y), .carry_in(carry_in), .carry_out(carry_out), .out(out));

    initial begin
        for (integer a = 0; a < 8; a = a + 1) begin 
            {x, y, carry_in} = a;
            #10
            $display("x = %b, y = %b, carry_in = %b, sum = %b, carry_out = %b\n", x, y, carry_in, out, carry_out);
        end
    end
endmodule