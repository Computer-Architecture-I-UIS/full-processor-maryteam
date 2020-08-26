package TOP

import chisel3._
import chisel3.util._

class InstMem extends Module{
	val io = IO(new Bundle {
		val addrI = Input(UInt(32.W))
		val instruc = Output(UInt(32.W))
})

io.instruc:=0.U


/*
Programa primero para probar el procesador
	
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	add x4,x2,x3
	add x4,x4,x1
	add x4,x4,x1
	slli x5,x2,1
	srli x6,x2,1
	
*/

when (io.addrI === 0.U){
	io.instruc := "b000000000001_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 1.U) {
	io.instruc := "b000000000010_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 2.U) {
	io.instruc := "b000000000011_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 3.U) {
	io.instruc := "b000000000011_00010_000_00100_0110011".U
	}
	.elsewhen (io.addrI === 4.U) {
	io.instruc := "b000000000001_00100_000_00100_0110011".U
	}
	.elsewhen (io.addrI === 5.U) {
	io.instruc := "b000000000001_00100_000_00100_0110011".U
	}
	.elsewhen (io.addrI === 6.U) {
	io.instruc := "b000000000001_00010_001_00101_0010011".U
	}
	.elsewhen (io.addrI === 7.U) {
	io.instruc := "b000000000001_00010_101_00110_0010011".U
	}
	.elsewhen (io.addrI === 8.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 9.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 10.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 11.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 12.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 13.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 14.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 15.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 16.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 17.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 18.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 19.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 20.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 21.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 22.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 23.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 24.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 25.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 26.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 27.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 28.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 29.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 30.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 31.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	
	
}



/*





/*
Programa sw, lw
	
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	sw x1,0(x1)
	sw x2,0(x2)
	sw x3,0(x3)
	lw x4,0(x1)
	lw x5,0(x2)
	lw x6,0(x3)
	
*/

when (io.addrI === 0.U){
	io.instruc := "b000000000001_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 1.U) {
	io.instruc := "b000000000010_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 2.U) {
	io.instruc := "b000000000011_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 3.U) {
	io.instruc := "b0000000_00001_00001_010_00000_0100011".U
	}
	.elsewhen (io.addrI === 4.U) {
	io.instruc := "b0000000_00010_00010_010_00000_0100011".U
	}
	.elsewhen (io.addrI === 5.U) {
	io.instruc := "b0000000_00011_00011_010_00000_0100011".U
	}
	.elsewhen (io.addrI === 6.U) {
	io.instruc := "b000000000000_00001_010_00100_0000011".U  
	}
	.elsewhen (io.addrI === 7.U) {
	io.instruc := "b000000000000_00010_010_00101_0000011".U
	}
	.elsewhen (io.addrI === 8.U) {
	io.instruc := "b000000000000_00011_010_00110_0000011".U
	}



/*
Programa jalr
	
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	addi x1,x0,4
	addi x2,x0,5
	addi x3,x0,6
	jalr x4,-4
	
*/

when (io.addrI === 0.U){
	io.instruc := "b000000000001_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 1.U) {
	io.instruc := "b000000000010_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 2.U) {
	io.instruc := "b000000000011_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 3.U) {
	io.instruc := "b000000000100_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 4.U) {
	io.instruc := "b000000000101_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 5.U) {
	io.instruc := "b000000000110_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 6.U) {
	io.instruc := "b111111111100_00001_000_00100_1100111".U  //offset = -6 entonces pc=0 (reinicia)
	}

/*
Programa jal
	
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	addi x1,x0,4
	addi x2,x0,5
	addi x3,x0,6
	jal x4,-6
	
*/

when (io.addrI === 0.U){
	io.instruc := "b000000000001_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 1.U) {
	io.instruc := "b000000000010_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 2.U) {
	io.instruc := "b000000000011_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 3.U) {
	io.instruc := "b000000000100_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 4.U) {
	io.instruc := "b000000000101_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 5.U) {
	io.instruc := "b000000000110_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 6.U) {
	io.instruc := "b1_1111111101_1_11111111_00100_1101111".U  //offfset = -6
	}



/*
Programa para probar bne (branches)
	
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	addi x1,x0,4
	addi x2,x0,5
	addi x3,x0,6
	bne x1,x2,-6
	
*/

when (io.addrI === 0.U){
	io.instruc := "b000000000001_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 1.U) {
	io.instruc := "b000000000010_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 2.U) {
	io.instruc := "b000000000011_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 3.U) {
	io.instruc := "b000000000100_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 4.U) {
	io.instruc := "b000000000101_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 5.U) {
	io.instruc := "b000000000110_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 6.U) {
	io.instruc := "b1111111_00010_00001_001_11011_1100011".U
	}


/*
Programa primero para probar el procesador
	
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	add x4,x2,x3
	add x4,x4,x1
	add x4,x4,x1
	slli x5,x2,1
	srli x6,x2,1
	
*/

when (io.addrI === 0.U){
	io.instruc := "b000000000001_00000_000_00001_0010011".U
	}
	.elsewhen (io.addrI === 1.U) {
	io.instruc := "b000000000010_00000_000_00010_0010011".U
	}
	.elsewhen (io.addrI === 2.U) {
	io.instruc := "b000000000011_00000_000_00011_0010011".U
	}
	.elsewhen (io.addrI === 3.U) {
	io.instruc := "b000000000011_00010_000_00100_0110011".U
	}
	.elsewhen (io.addrI === 4.U) {
	io.instruc := "b000000000001_00100_000_00100_0110011".U
	}
	.elsewhen (io.addrI === 5.U) {
	io.instruc := "b000000000001_00100_000_00100_0110011".U
	}
	.elsewhen (io.addrI === 6.U) {
	io.instruc := "b000000000001_00010_001_00101_0010011".U
	}
	.elsewhen (io.addrI === 7.U) {
	io.instruc := "b000000000001_00010_101_00110_0010011".U
	}
	.elsewhen (io.addrI === 8.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 9.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 10.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 11.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 12.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 13.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 14.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 15.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 16.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 17.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 18.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 19.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 20.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 21.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 22.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 23.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 24.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 25.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 26.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 27.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 28.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 29.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 30.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	.elsewhen (io.addrI === 31.U) {
	io.instruc := "b000000000000_00000_000_00000_0010011".U
	}
	
	*/
