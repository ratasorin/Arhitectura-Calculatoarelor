`include "four_bit_comparator.v"

module four_bit_comparator_testbench;
  reg [3:0] a, b;
  wire eq, gt, lt;
  string out;
  four_bit_comparator DUT (.a(a), .b(b), .eq(eq), .gt(gt), .lt(lt));
  
  initial begin
    for(integer i = 0; i < 8'b11111111; i = i + 1) begin
      {a, b} = i;	
      #10
      out = eq ? "x == y" : (gt ? "x > y" : "x < y");
      $display("x = %d, y = %d %s", a, b, out);
    end 
  end 

endmodule