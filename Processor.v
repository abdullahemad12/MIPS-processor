/**
  * Processor Module
  *
  * single cycle MIPS processor module 
  *
  */

module Processor(clk);

	input clk;

	wire[31: 0] pc, instruction, ReadData1, ReadData2, ALUOut, SEOut, PCin0, PCin1, shl;
	wire[3:0] ALUCtrlOut;
	wire RegDst, RegWrite, ALUSrc, Branch, MemRead, MemWrite, MemtoReg, ALUop;

	
	/*Adder PCadder1(PCin0, input1, input2);
	Adder PCadder2(PCin1, input1, input2);
	shiftLeft2(shl, input1);

	ProgramCounter PC(pc, PrevPC, clk);
	
	InstructionMemory IM(instruction,address,clk);

	RegisterFile RF(ReadData1, ReadData2, ReadReg1, ReadReg2, WriteReg, WriteData, RegWrite, clk);

	SignExtend(SEOut, in);

	ALUControl ALUCtrl(ALUOut, ALUOp, FuncCode)
	ALU ALU(ALUOut, ALUControl, Data1, Data2);   
	
	DataMemory DM(data_out, data_in, address, MemRead, MemWrite, clk);


	ControlUnit(RegDst, RegWrite, ALUSrc, Branch, MemRead, MemWrite, MemtoReg, ALUop, OPCode);*/
	
	
endmodule