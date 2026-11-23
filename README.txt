LAB 07 - ALU
Files are grouped by the five manual tasks. Task 1 is a 1-bit ALU with AND/OR/ADD-SUB.
Task 2 builds a 4-bit ALU and reports CF, SF, ZF, OF. Task 3 is parameterized.
Task 4 is the 32-bit ALU using the manual's alu_op encoding. Task 5 is a Logisim
activity, so it cannot be completed by Verilog; recreate the Task 4 logic in Logisim.
Compile one task at a time, for example:
vlib work
vlog task2_4bit_alu.v tb_task2.v
vsim work.tb_task2
run -all
Task 1 operation select: 00 AND, 01 OR, 10 ADD/SUB (b_inv=0 add, 1 subtract).
Task 2: 000 AND, 001 OR, 010 ADD, 110 SUB, 111 signed SLT.
Task 3: 000 ADD, 001 SUB, 010 AND, 011 OR, 100 NOT A, 101 XOR.
Task 4 uses the exact alu_op table in the manual. Testbenches are directed examples,
not exhaustive verification. Logisim tasks require a separate circuit diagram.
