package TOP

import chisel3._
import chisel3.util._



class control extends Module{
	val io = IO(new Bundle {
		val state = Input(UInt(6.W))
		val muxALUin2 = Output(UInt(2.W))
		val muxAddrI = Output(UInt(2.W))
		val muxRegOfVec = Output(UInt(4.W))
		val muxwen = Output(Bool())
		val muxren = Output(Bool())
		val muxwrAddr = Output(Bool())
		val muxrdAddr = Output(Bool())
		val muxwrData = Output(UInt(2.W))
})

	//inicializacion del objeto de instrucciones
	val ins = Instructions
	
	io.muxALUin2 := 1.U //default
	io.muxAddrI := 0.U//default
	io.muxRegOfVec := 7.U
	io.muxwen := 0.U
	io.muxren := 0.U
	io.muxwrAddr := 0.U
	io.muxrdAddr := 0.U
	io.muxwrData := 3.U
	
	
	
	switch(io.state){
	
	
		//SHIFTS
		is(ins.sll){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.slli){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.srl){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.srli){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.sra){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.srai){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.slt){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.slti){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.sltu){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.sltiu){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		
		
		//ADDITION, SUBTRACTION AND LOGIC
		is(ins.add){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.addi){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.sub){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.xor){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.xori){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.or){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.ori){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.and){
			io.muxALUin2 := 2.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		is(ins.andi){
			io.muxALUin2 := 1.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 6.U
		}
		
		
		//BRANCHES
		is(ins.bne){
			io.muxALUin2 := 2.U
			io.muxAddrI := 3.U
		}
		is(ins.beq){
			io.muxALUin2 := 2.U
			io.muxAddrI := 3.U
		}
		is(ins.blt){
			io.muxALUin2 := 2.U
			io.muxAddrI := 3.U
		}
		is(ins.bge){
			io.muxALUin2 := 2.U
			io.muxAddrI := 3.U
		}
		is(ins.bltu){
			io.muxALUin2 := 2.U
			io.muxAddrI := 3.U
		}
		is(ins.bgeu){
			io.muxALUin2 := 2.U
			io.muxAddrI := 3.U
		}
		
		
		//JUMPS
		is(ins.jal){
			io.muxALUin2 := 0.U
			io.muxAddrI := 1.U
			io.muxRegOfVec := 0.U
		}
		is(ins.jalr){
			io.muxALUin2 := 0.U
			io.muxAddrI := 2.U
			io.muxRegOfVec := 0.U
		}
		
		
		//STORES
		is(ins.sw){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
		}
		is(ins.sh){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
		}
		is(ins.sb){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
		}
		
		
		//LOADS
		is(ins.lw){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 1.U
		}
		is(ins.lb){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 2.U
		}
		is(ins.lbu){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 2.U
		}
		is(ins.lh){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 3.U
		}
		is(ins.lhu){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 3.U
		}
		
		
		//LUI AND AUIPC
		is(ins.lui){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 4.U
		}
		is(ins.auipc){
			io.muxALUin2 := 0.U
			io.muxAddrI := 0.U
			io.muxRegOfVec := 5.U
		}
	
	}
	
	
	
	
}























