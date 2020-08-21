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
	
	//memoria de instrucciones
	InstMem.io.addrI := addrI
	
	//decoder
	InstDeco.io.instruc := InstMem.io.instruc //InstDeco.io.instruc := io.instruc 
	
	//incremento de program counter
	addrI := addrI + 1.U
	
	//operacion del ALU
	ALU.io.state := InstDeco.io.state
	ALU.io.in1   := RegOfVec(InstDeco.io.rs1) 
	ALU.io.in2   := Mux(InstDeco.io.state===ins.sll || InstDeco.io.state===ins.srl || InstDeco.io.state===ins.sra || InstDeco.io.state===ins.add || InstDeco.io.state===ins.sub || InstDeco.io.state===ins.xor || InstDeco.io.state===ins.or || InstDeco.io.state===ins.and || InstDeco.io.state===ins.slt || InstDeco.io.state===ins.sltu, RegOfVec(InstDeco.io.rs2), InstDeco.io.imm.asUInt) //multiplexor del ALU
	io.out       := ALU.io.out
	
	//guardar en registro
	RegOfVec(InstDeco.io.rd) := ALU.io.out
	
}



object TOPMain extends App
{
	chisel3.Driver.execute(args, () => new TOP)
}






















