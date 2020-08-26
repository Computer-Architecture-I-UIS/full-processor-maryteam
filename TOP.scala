package TOP

import chisel3._
import chisel3.util._



class TOP extends Module{
	val io = IO(new Bundle {
		//val instruc = Input(UInt(32.W))
		val reset = Input(Bool())
		val out = Output(UInt(32.W))
})

	//Inicialización de otros módulos
	val InstDeco = Module(new InstDeco)
	val ALU = Module(new ALU)
	val InstMem = Module(new InstMem)
	val Memo = Module(new Memo)
	val control = Module(new control)
	
	//inicializacion de el program counter
	val addrI = RegInit(0.U(32.W))
	
	//inicializacion del banco de registros
	val RegOfVec = RegInit(VecInit(Seq.fill(32)(0.U(32.W))))
	
	//inicializacion del objeto de instrucciones
	val ins = Instructions
	
	//control
	control.io.state := InstDeco.io.state
	
	//memoria de instrucciones
	InstMem.io.addrI := addrI
	
	//decoder
	InstDeco.io.instruc := InstMem.io.instruc //InstDeco.io.instruc := io.instruc 
	
	//operacion del ALU
	ALU.io.state := InstDeco.io.state
	ALU.io.in1   := Mux(control.io.muxALUin1, RegOfVec(InstDeco.io.rs1), 0.U)
	when(control.io.muxALUin2===2.U){//multiplexor de control in2
		ALU.io.in2 := RegOfVec(InstDeco.io.rs2)
	} .elsewhen(control.io.muxALUin2===1.U){
		ALU.io.in2 := InstDeco.io.imm.asUInt
	} .otherwise{
		ALU.io.in2 := 0.U
	}
	io.out       := ALU.io.out
	
	//inicializar señales de la memoria
	Memo.io.wen := 0.U(1.W)
	Memo.io.ren := 0.U(1.W)
	Memo.io.wrAddr := 0.U(8.W)
	Memo.io.wrData := 0.U(32.W)
	Memo.io.rdAddr := 0.U(8.W)
	
	//Multiplexores de control//
	
	//Multiplexor para program counter (addrI)
	when(control.io.muxAddrI===0.U){
		addrI := addrI + 1.U
	} .elsewhen(control.io.muxAddrI===1.U){
		addrI := addrI + InstDeco.io.imm.asUInt
	} .elsewhen(control.io.muxAddrI===2.U){
		addrI := Cat((RegOfVec(InstDeco.io.rs1) + InstDeco.io.imm.asUInt)(31,1),0.U(1.W))
	} .elsewhen(control.io.muxAddrI===3.U){
		addrI := Mux(ALU.io.out===1.U, addrI + InstDeco.io.imm.asUInt, addrI + 1.U)
	}
	
	//Multiplexor para el banco de registros
	when(control.io.muxRegOfVec===0.U){
		RegOfVec(InstDeco.io.rd) := addrI + 1.U
	} .elsewhen(control.io.muxRegOfVec===1.U){
		RegOfVec(InstDeco.io.rd) := Memo.io.rdData
	} .elsewhen(control.io.muxRegOfVec===2.U){
		RegOfVec(InstDeco.io.rd) := Memo.io.rdData(7,0)
	} .elsewhen(control.io.muxRegOfVec===3.U){
		RegOfVec(InstDeco.io.rd) := Memo.io.rdData(15,0)
	} .elsewhen(control.io.muxRegOfVec===4.U){
		RegOfVec(InstDeco.io.rd) := InstDeco.io.imm.asUInt
	} .elsewhen(control.io.muxRegOfVec===5.U){
		RegOfVec(InstDeco.io.rd) := addrI + InstDeco.io.imm.asUInt
	} .elsewhen(control.io.muxRegOfVec===6.U){
		RegOfVec(InstDeco.io.rd) := ALU.io.out
	} .elsewhen(control.io.muxRegOfVec===7.U){
		RegOfVec(0) := 0.U
	}
	
	//Multiplexor para el write enable de Memo
	Memo.io.wen := Mux(control.io.muxwen===1.U, 1.U, 0.U)
	
	//Multiplexor para el read enable de Memo
	Memo.io.ren := Mux(control.io.muxren===1.U, 1.U, 0.U)
	
	//Multiplexor para el write address de Memo
	Memo.io.wrAddr := Mux(control.io.muxwrAddr===1.U, RegOfVec(InstDeco.io.rs1) + InstDeco.io.imm.asUInt, 0.U)
	
	//Multiplexor para el read address de Memo
	Memo.io.rdAddr := Mux(control.io.muxrdAddr===1.U, RegOfVec(InstDeco.io.rs1) + InstDeco.io.imm.asUInt, 0.U)
	
	//Multiplexor para write data de Memo
	when(control.io.muxwrData===0.U){
		Memo.io.wrData := RegOfVec(InstDeco.io.rs2)
	} .elsewhen(control.io.muxwrData===1.U){
		Memo.io.wrData := RegOfVec(InstDeco.io.rs2)(15,0)
	} .elsewhen(control.io.muxwrData===2.U){
		Memo.io.wrData := RegOfVec(InstDeco.io.rs2)(7,0)
	} .elsewhen(control.io.muxwrData===3.U){
		Memo.io.wrData := 0.U
	}
	
	
	
	
}



object TOPMain extends App
{
	chisel3.Driver.execute(args, () => new TOP)
}





















