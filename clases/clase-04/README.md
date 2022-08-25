# clase-04

viernes 02 de septiembre 2022, presencial

esta clase veremos los conceptos de grabar, samplear y buffers

## grabar

grabar será tomar un sonido, obtener números a partir de ese sonido, y esos números ordenarlos y guardarlos en un archivo, lo que nos permitirá usarlo posteriormente.

por ejemplo, podemos usar ChucK y Pure Data para no solamente emitir el sonido que estamos creando a nuestros parlantes, sino que podemos crear un espacio en la memoria de nuestro computador y luego almacenar ese resultado en un archivo que podemos copiar, almacenar y reproducir.

antecedentes históricos de grabar sonido, hace 100 años.

## samplear

por samplear, del inglés "sample" que significa muesrta, se entiende tomar un sonido que ya existe.

es la base del hip hop.

ya no es necesario hacer un gesto para mover cuerdas, sino que usamos sonido preexistente como la base de nuestro sonido.

los instrumentos que nos permiten grabar sonido, manipularlo y luego reproducirlo reciben el nombre de samplers.

el instrumento que permitió esta revolución es el Akai MPC diseñado por Roger Linn.

mostrar ejemplo de J Dilla, The Avalanches, Paul's Boutique.

## buffers

en la estructura de un computador tenemos nuestro disco duro donde tenemos archivos.

nuestros programas en ChucK, Pure Data, o similares, nos permiten crear pequeños espacios en memoria que solamente existen mientras el programa está operando, y donde podemos almacenar información.

esa información pueden ser números que calculamos, como una variable, o dibujos que hacemos en la pantalla con nuestra gestualidad capturada por sensores, o puede ser un archivo de audio que vive en nuestro disco duro.

cuando lo cargamos en un buffer, podemos copiarlo, reproducirlo a distintas velocidades, invertirlo, incluso destruirlo, y todo esto sin pasar a llevar nuestro archivo original.

## implementación en ChucK

## implementación en Pure Data
