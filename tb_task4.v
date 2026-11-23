module tb_task4;
 reg [31:0] a,b; reg [3:0] op; wire [31:0] result; wire zero;
 alu_32bit dut(a,b,op,result,zero);
 initial begin
 a=32'd20;b=32'd3;
 op=0;#10;$display("ADD %0d",result);
 op=1;#10;$display("SUB %0d",result);
 op=2;#10;$display("AND %h",result);
 op=3;#10;$display("OR %h",result);
 op=4;#10;$display("XOR %h",result);
 op=5;#10;$display("SLT %0d",result);
 op=6;#10;$display("SLTU %0d",result);
 op=7;#10;$display("SLL %h",result);
 op=8;#10;$display("SRL %h",result);
 op=9;#10;$display("SRA %h",result);
 $finish;end
endmodule
