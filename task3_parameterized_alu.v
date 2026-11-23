module parameterized_alu #(parameter N=8)
(input [N-1:0] A,B,input [2:0] op,output reg [N-1:0] result);
 always @* begin
  case(op)
   3'b000: result=A+B;
   3'b001: result=A-B;
   3'b010: result=A&B;
   3'b011: result=A|B;
   3'b100: result=~A;
   3'b101: result=A^B;
   default: result={N{1'b0}};
  endcase
 end
endmodule
