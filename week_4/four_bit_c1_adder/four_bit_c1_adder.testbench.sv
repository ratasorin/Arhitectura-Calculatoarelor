`include "four_bit_c1_adder.v"

module four_bit_c1_adder_testbench;
  reg [3:0] a, b;
  wire [3:0] z;
  four_bit_c1_adder DUT (.a(a), .b(b), .z(z));
  string a_c1, b_c1, z_c1;
  
  initial begin
    for(integer i = 0; i < 8'b11111111; i = i + 1) begin
      {a, b} = i;	
      #10
      $sformat(a_c1, a[3] == 1 ? "-%d" : "%d", a[3] == 1 ? ~a: a);
      $sformat(b_c1, b[3] == 1 ? "-%d" : "%d", b[3] == 1 ? ~b: b);
      $sformat(z_c1, z[3] == 1 ? "-%d" : "%d", z[3] == 1 ? ~z: z);
      $display("x = %s, y = %s, x + y = %s", a_c1, b_c1, z_c1);
    end 
  end 

endmodule