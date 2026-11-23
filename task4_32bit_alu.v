module alu_32bit(input [31:0] a,b,input [3:0] alu_op,
 output reg [31:0] result,output zero);
 always @* begin
  case(alu_op)
   4'h0: result=a+b;
   4'h1: result=a-b;
   4'h2: result=a&b;
   4'h3: result=a|b;
   4'h4: result=a^b;
   4'h5: result=($signed(a)<$signed(b))?32'd1:32'd0;
   4'h6: result=(a<b)?32'd1:32'd0;
   4'h7: result=a<<b[4:0];
   4'h8: result=a>>b[4:0];
   4'h9: result=$signed(a)>>>b[4:0];
   default: result=0;
  endcase
 end
 assign zero=(result==0);
endmodule
