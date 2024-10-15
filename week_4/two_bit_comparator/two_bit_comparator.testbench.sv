`include "two_bit_comparator.v"

module two_bit_comparator_testbench ();
  reg [1:0] x, y;
  wire eq, gt, lt;
  string out;
  two_bit_comparator DUT (.x(x), .y(y), .eq(eq), .gt(gt), .lt(lt));
  
  initial begin
    for(integer a = 0; a < 16; a = a + 1) begin
      {x, y} = a;	
      #10
      out = eq ? "x == y" : (gt ? "x > y" : "x < y");
      $display("x = %d, y = %d %s", x, y, out);
    end 
  end 
endmodule