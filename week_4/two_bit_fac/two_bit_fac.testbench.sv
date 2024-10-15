`include "two_bit_fac.v"

module fac_2_tb ();
  	reg [1:0] x, y;
    reg carry_in;
  	wire carry_out;
  	wire [1:0] out;
  	
  	two_bit_fac FAC_TEST (.a(x), .b(y), .carry_in(carry_in), .carry_out(carry_out), .out(out));
    
  	initial begin
      for (integer a = 0; a < 32; a = a + 1) begin
        {x, y, carry_in} = a;
        #10
        $display("x = %d, y = %d, carry_in = %b, x + y = %d", x, y, carry_in, {carry_out, out});
	  end
	end
endmodule