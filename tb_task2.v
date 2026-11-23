module tb_task2;
 reg [3:0] A,B; reg [2:0] op;
 wire [3:0] result; wire CF,SF,ZF,OF;
 alu_4bit dut(A,B,op,result,CF,SF,ZF,OF);
 initial begin
  A=4'd5;B=4'd3;
  op=3'b000;#10;$display("AND=%h flags CF/SF/ZF/OF=%b%b%b%b",result,CF,SF,ZF,OF);
  op=3'b001;#10;$display("OR =%h",result);
  op=3'b010;#10;$display("ADD=%h",result);
  op=3'b110;#10;$display("SUB=%h",result);
  op=3'b111;#10;$display("SLT=%h",result);
  $finish;
 end
endmodule
