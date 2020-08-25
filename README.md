 Mary Zuleika Jimenez Diaz 2150952 - Camilo Santamaria 2145548 - Alejandro Navarro Luna 2160472/ MARYTEAM 
================
PROCESADOR FULL
================

DIAGRAMA DE BLOQUES
-------------------


![DATAPAT](https://github.com/Computer-Architecture-I-UIS/the-processor-maryteam/blob/master/DATAPAT.png)




DESCRIPCIÓN
----------------
Para la implementacion del prosesador full o completo se usaron los archivos realizados para el taller anterior(Procesador), se realizo la modificacion de los modulos TOP, ALU y instDeco, y se agregaron los bloques de Control y memo, para implementar las nuevas intrucciones risc-v requeridas, jumps(saltos de registro), branches(saltos por comparacion de archivos), loads(lectura de memoria) y store(escritura de memoria).

Para la simulación y puesta en marcha del procesador se usarón _ archivos, en los cuales podemos destacar
el decodificador dado a nuestra disposición para el desarrollo de la actividad  (archivo InstDeco). Se emplearón los archivos de ALU (Unidad Logica de Aritmetica), la cual permitia hacer operaciones basicas como la adición,la sustración el corrimiento de bits, la comparación de variables entre otras.El archivo control permite los saltos de registro, controla los branches y los jumps.En memo se realiza el contro de la memoria y la memoria, permite hacer los loads y store. En el archivo TOP, en este se encuentran los otros bloques lógicos del diagrama, como son los jumps. Se inicializa una banco de registros de 32 direcciones con un tamaño de palabra de 32 bits. También se encuentra la "memoria de instrucciones", se encarga de cargar las intrucciones a simular en el procesador full. 

Los módulos en scala se situan dentro de un archivo TOP el cual une los archivos nombrados
anteriormente y con esto podemos simular y generar el  archivo en vivado que se usó para generar el testbench para 
visualizar las salida del procesador en el GTK Wave

COMENTARIOS
----------------------
1. Se tuvo que realizar contador para colocar un elemento de control.

2. El procesador se demora 4 ciclos de reloj en realizar una operación.

3. Es necesario escribir las instrucciones dentro del archivo ```TOP.scala```.

4. No se encontró una forma para realizar las operaciones ```lui``` y ```auipc``` dentro de los 4 ciclos de reloj necesarios para cada operación.

5. El valor de operacion queda listo para leer en la salida solo luego de 4 ciclos de salida.





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

No puede ejecutar
- ```lui``` - load upper immediate
- ```auipc``` - add upper immediate to PC


RESULTADOS
----------
Instrucciones y simulación 1

![programa cargado](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/prog1.png)

![programa cargado](https://github.com/Computer-Architecture-I-UIS/full-processor-maryteam/blob/master/gtk1.png)


Instrucciones y simulación  2




Instrucciones y simulación 3 
