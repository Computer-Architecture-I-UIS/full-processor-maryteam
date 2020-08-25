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
	
	//inicializacion de el program counter
	val addrI = RegInit(0.U(32.W))
	
	//inicializacion del banco de registros
	val RegOfVec = RegInit(VecInit(Seq.fill(32)(0.U(32.W))))
	
	//inicializacion del objeto de instrucciones
	val ins = Instructions
	
	val temp=RegInit(0.U(32.W))
	
	//memoria de instrucciones
	InstMem.io.addrI := addrI
	
	//decoder
	InstDeco.io.instruc := InstMem.io.instruc //InstDeco.io.instruc := io.instruc 
	
	//incremento de program counter
	//addrI := addrI + 1.U
	
	//operacion del ALU
	ALU.io.state := InstDeco.io.state
	ALU.io.in1   := RegOfVec(InstDeco.io.rs1) 
	ALU.io.in2   := Mux(InstDeco.io.state===ins.sll || InstDeco.io.state===ins.srl || InstDeco.io.state===ins.sra || InstDeco.io.state===ins.add || InstDeco.io.state===ins.sub || InstDeco.io.state===ins.xor || InstDeco.io.state===ins.or || InstDeco.io.state===ins.and || InstDeco.io.state===ins.slt || InstDeco.io.state===ins.sltu || InstDeco.io.state===ins.bne || InstDeco.io.state===ins.beq || InstDeco.io.state===ins.blt || InstDeco.io.state===ins.bge || InstDeco.io.state===ins.bltu || InstDeco.io.state===ins.bgeu, RegOfVec(InstDeco.io.rs2), InstDeco.io.imm.asUInt) //multiplexor del ALU
	io.out       := ALU.io.out
	
	
	
	//control
	when( (InstDeco.io.state===ins.bne || InstDeco.io.state===ins.beq || InstDeco.io.state===ins.blt || InstDeco.io.state===ins.bge || InstDeco.io.state===ins.bltu || InstDeco.io.state===ins.bgeu)   &&    ALU.io.out===1.U){
		addrI := addrI + InstDeco.io.imm.asUInt
	} .elsewhen( (InstDeco.io.state===ins.bne || InstDeco.io.state===ins.beq || InstDeco.io.state===ins.blt || InstDeco.io.state===ins.bge || InstDeco.io.state===ins.bltu || InstDeco.io.state===ins.bgeu)   &&    ALU.io.out===0.U  ){
		addrI := addrI + 1.U
	} .elsewhen(InstDeco.io.state===ins.jal){
		RegOfVec(InstDeco.io.rd) := addrI + 1.U;
		addrI := addrI + InstDeco.io.imm.asUInt
	} .elsewhen(InstDeco.io.state===ins.jalr){
		//temp := addrI + 1.U;
		//addrI :=  (RegOfVec(InstDeco.io.rs1) + InstDeco.io.imm.asUInt)
		RegOfVec(InstDeco.io.rd) := addrI + 1.U
		addrI := Cat((RegOfVec(InstDeco.io.rs1) + InstDeco.io.imm.asUInt)(31,1),0.U(1.W))
		
	} .otherwise{
		RegOfVec(InstDeco.io.rd) := ALU.io.out
		addrI := addrI + 1.U
	}
	
	
}



object TOPMain extends App
{
	chisel3.Driver.execute(args, () => new TOP)
}






















