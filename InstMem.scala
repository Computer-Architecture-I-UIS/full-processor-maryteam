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
Programa
	
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
