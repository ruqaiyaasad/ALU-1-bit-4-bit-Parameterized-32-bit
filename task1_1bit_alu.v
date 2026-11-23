module alu_1bit(input A,B,carry_in,input [1:0] sel,input b_inv,
 output reg result, output reg carry_out);
 wire bx = B ^ b_inv;
 wire sum = A ^ bx ^ carry_in;
 wire cout = (A & bx) | (A & carry_in) | (bx & carry_in);
 always @* begin
   carry_out=1'b0; result=1'b0;
   case(sel)
    2'b00: result=A & B;
    2'b01: result=A | B;
    2'b10: begin result=sum; carry_out=cout; end
    default: begin result=sum; carry_out=cout; end
   endcase
 end
endmodule
