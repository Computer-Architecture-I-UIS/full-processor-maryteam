 Mary Zuleika Jimenez Diaz 2150952 - Camilo Santamaria 2145548 - Alejandro Navarro Luna 2160472/ MARYTEAM 
================
PROCESADOR FULL
================

DIAGRAMA DE BLOQUES
-------------------


![DATAPAT](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/DATAPAT.png)




DESCRIPCIÓN
----------------
Para la implementación del prosesador full o completo se usaron los archivos realizados para el taller anterior (Procesador). Se realizó la modificación de los módulos ```TOP```, ```ALU```, ```InstMemo``` y ```InstDeco```, y se agregaron los bloques de ```control``` y ```Memo```, para implementar las nuevas intrucciones risc-v requeridas; jumps (saltos de registro), branches (saltos por comparacion de datos), loads (lectura de memoria) y stores (escritura de memoria).

Para la simulación y puesta en marcha del procesador se usarón 6 archivos, en los cuales podemos destacar el decodificador de instrucciones dado a nuestra disposición para el desarrollo de la actividad (archivo InstDeco). Se emplearon los archivos de ```ALU``` (unidad aritmético-lógica,), la cual permite hacer operaciones básicas como la adición, la resta, el corrimiento de bits, la comparación de variables entre otras. El archivo ```control``` permite los saltos de registro, controla los branches y los jumps. En ```Memo``` permite interactuar con la memoria donde se hace las operaciones load y store. En el archivo ```TOP```, en este se encuentran los otros bloques lógicos del diagrama, como son los jumps. Se inicializa una banco de registros de 32 direcciones con un tamaño de palabra de 32 bits. También se encuentra ```InstMemo```, la "memoria de instrucciones" que se encarga de cargar las intrucciones a simular en el procesador full. 

Los módulos en scala se situan dentro de un archivo ```TOP``` el cual une los archivos nombrados anteriormente y con esto podemos simular y generar el  archivo en lenguaje verilog que se usó para generar el testbench para visualizar las salidas del procesador en el GTKWave.

COMENTARIOS
----------------------
1. Se realizó la correción de los archivos del procesador (taller anterior), para corregir los bugs en la salida, los cuales hacía que los corrieran y la salida se activara antes de tiempo mostrando por un pequeno instante un valor de salida erróneo.

2. El procesador se demora 1 ciclo de reloj en realizar una operación.

3. Es necesario escribir las instrucciones dentro del archivo ```TOP.scala```.

4. Ahora el procesador a ser completo permite las instrucciones de saltos de registro y de carga y lectura de una memoria.

5. En ocasiones cuando solo utiliza operaciones de tipo store no aparece el bloque de memoria en las señales de GTKWave.


LISTADO DE INSTRUCCIONES 
------------------------
Puede ejecutar:
- ```sll``` - shift left logical
- ```slli``` - shift left logical immediate
- ```srl``` - shift right logical
- ```srli``` - shift right logical
- ```sra``` - shift right arithmetic
- ```srai``` - shift right arithmetic immediate
- ```add``` - add
- ```addi``` - add immediate
- ```sub``` - subtract
- ```xor``` - xor
- ```xori``` - xor immediate
- ```and``` - and
- ```andi``` - and immediate
- ```or``` - or
- ```ori``` - or immediate
- ```slt``` - set
- ```sltu``` - set immediate
- ```slti``` - set unsigned
- ```sltiu``` - set immediate unsigned
- ```lb``` - set immediate unsigned
- ```beq``` - branch =
- ```bne``` - branch ≠
- ```blt``` - branch <
- ```bge``` - branch ≥
- ```bltu``` - branch < unsigned
- ```bgeu```  - branch ≥ unsigned
- ```jal``` - j&l
- ```jalr``` - jump & link register
- ```lb``` - load byte
- ```lh``` - load halfword
- ```lbu``` - load byte unsigned
- ```lhu``` - load half unsigned
- ```lw``` - load word
- ```sb``` - store byte
- ```sh``` - store halfword
- ```sw``` - store word
- ```lui``` - load upper immediate
- ```auipc``` - add upper immediate to PC


RESULTADOS
----------
Instrucciones y simulación 1
```
Programa:
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	sw x1,0(x1)
	sw x2,0(x2)
	sw x3,0(x3)
	lw x4,0(x1)
	lw x5,0(x2)
	lw x6,0(x3)
```

![programa sw lw](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/gtk_lw_sw.png)




Instrucciones y simulación 2

```
Programa:
	addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	addi x1,x0,4
	addi x2,x0,5
	addi x3,x0,6
	bne x1,x2,-6
```

![programa branch](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/gtk_branch.png)

Instruciones y simulación 3



```
Programa:
 addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	addi x1,x0,4
	addi x2,x0,5
	addi x3,x0,6
	jal x4,-6
```

![gtk_jal](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/gtk_jal.png)


```
Programa:
 addi x1,x0,1
	addi x2,x0,2
	addi x3,x0,3
	add x4,x2,x3
	add x4,x4,x1
	add x4,x4,x1
	slli x5,x2,1
	srli x6,x2,1
```

![gtk_1](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/gtk1.png)


CONCLUSIONES
------------

El lenguaje Chisel permite crear bloques de control para la operación deseada de un datapath con sus respectivos bloques lógicos. 
