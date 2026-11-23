module tb_task3;
 reg [7:0] A,B; reg [2:0] op; wire [7:0] result;
 parameterized_alu #(8) dut(A,B,op,result);
 initial begin
 A=8'h0F;B=8'h03;
 op=0;#10;$display("ADD=%h",result);
 op=1;#10;$display("SUB=%h",result);
 op=2;#10;$display("AND=%h",result);
 op=3;#10;$display("OR=%h",result);
 op=4;#10;$display("NOT=%h",result);
 op=5;#10;$display("XOR=%h",result);
 $finish;end
endmodule
