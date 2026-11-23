module alu_4bit(input [3:0] A,B,input [2:0] alu_control,
 output reg [3:0] result, output reg CF,SF,ZF,OF);
 reg [4:0] tmp;
 always @* begin
  tmp=0; result=0; CF=0; OF=0;
  case(alu_control)
   3'b000: result=A&B;
   3'b001: result=A|B;
   3'b010: begin tmp={1'b0,A}+{1'b0,B}; result=tmp[3:0]; CF=tmp[4]; OF=(~(A[3]^B[3]))&(result[3]^A[3]); end
   3'b110: begin tmp={1'b0,A}-{1'b0,B}; result=tmp[3:0]; CF=(A>=B); OF=(A[3]^B[3])&(result[3]^A[3]); end
   3'b111: result=($signed(A)<$signed(B))?4'b0001:4'b0000;
   default: result=0;
  endcase
  SF=result[3]; ZF=(result==0);
 end
endmodule
