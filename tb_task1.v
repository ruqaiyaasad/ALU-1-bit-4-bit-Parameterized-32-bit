module tb_task1;
 reg A,B,carry_in,b_inv; reg [1:0] sel;
 wire result,carry_out;
 alu_1bit dut(A,B,carry_in,sel,b_inv,result,carry_out);
 initial begin
  $display("1-bit ALU tests");
  A=1;B=1;carry_in=0;b_inv=0;sel=0;#10;
  $display("AND result=%b carry=%b",result,carry_out);
  sel=1;#10;$display("OR result=%b carry=%b",result,carry_out);
  sel=2;#10;$display("ADD result=%b carry=%b",result,carry_out);
  A=1;B=0;carry_in=1;b_inv=1;#10;$display("SUB (1-0) result=%b carry=%b",result,carry_out);
  $finish;
 end
endmodule
