 Mary Zuleika Jimenez Diaz 2150952 - Camilo Santamaria 2145548 - Alejandro Navarro Luna 2160472/ MARYTEAM 
================
PROCESADOR FULL
================

DIAGRAMA DE BLOQUES
-------------------


![DATAPAT](https://github.com/Computer-Architecture-I-UIS/the-processor-maryteam/blob/master/DATAPAT.png)




DESCRIPCIÓN
----------------
Para la implementacion del prosesador full o completo se usaron los archivos realizados para el taller anterior(Procesador), se realizo la modificacion de los modulos TOP, ALU, InstruccionMemo y instDeco, y se agregaron los bloques de Control y memo, para implementar las nuevas intrucciones risc-v requeridas, jumps(saltos de registro), branches(saltos por comparacion de archivos), loads(lectura de memoria) y store(escritura de memoria).

Para la simulación y puesta en marcha del procesador se usarón 6 archivos, en los cuales podemos destacar
el decodificador dado a nuestra disposición para el desarrollo de la actividad  (archivo InstDeco). Se emplearón los archivos de ALU (Unidad Logica de Aritmetica), la cual permitia hacer operaciones basicas como la adición,la sustración el corrimiento de bits, la comparación de variables entre otras.El archivo control permite los saltos de registro, controla los branches y los jumps.En memo se realiza el contro de la memoria y la memoria, permite hacer los loads y store. En el archivo TOP, en este se encuentran los otros bloques lógicos del diagrama, como son los jumps. Se inicializa una banco de registros de 32 direcciones con un tamaño de palabra de 32 bits. También se encuentra InstruccionMemo, la "memoria de instrucciones" que se encarga de cargar las intrucciones a simular en el procesador full. 

Los módulos en scala se situan dentro de un archivo TOP el cual une los archivos nombrados
anteriormente y con esto podemos simular y generar el  archivo en vivado que se usó para generar el testbench para 
visualizar las salida del procesador en el GTK Wave

COMENTARIOS
----------------------
1. Se realizo la correcion de los archivos del procesador(taller anterior), para corregir los bug en la salida, los cuales hacia que los corrieran y la salida se activara antes de tiempo mostrando por un pequeno instante un valor de salida erroneo.

2. El procesador se demora 1 ciclo de reloj en realizar una operación.

3. Es necesario escribir las instrucciones dentro del archivo ```TOP.scala```.

4. Ahora el procesador a ser completo permite las instrucciones de saltos de registro y de carga y lectura de una memoria.



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

No puede ejecutar
- ```lui``` - load upper immediate
- ```auipc``` - add upper immediate to PC


RESULTADOS
----------
Instrucciones y simulación 1
```
/* program
addi x1,x0,1
addi x2,x0,2
addi x3,x0,3
add x4,x2,x3
add x4,x4 x1
slli x5,x2,1
srli x6,x2,1
*\
```

![programa cargado](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/gtk1.png)


Instrucciones y simulación  2

![gtk1](https://user-images.githubusercontent.com/67715438/91325303-a0f1ef80-e788-11ea-8b4d-1cdf1b87c2b7.png)
Instrucciones y simulación 3 


![gtk_bne](https://user-images.githubusercontent.com/67715438/91325466-d5fe4200-e788-11ea-973b-5c050e581592.png)

Instruciones y simulación 4 
![gtk_jalr](https://user-images.githubusercontent.com/67715438/91325475-d8609c00-e788-11ea-910e-c3e4dd2d68a0.png)
