# clase-04

viernes 02 de septiembre 2022, presencial

arreglos y secuenciadores

## arreglo

nuestros computadores tienen distintas maneras de almacenar información.

en ChucK, hemos visto que podemos crear variables capaces de almacenar, entre otros:

- dur: almacenan cantidades de tiempo
- int: almacenan números enteros, sin parte decimal
- float: almacenan números con parte decimal
- char: almacenan caracteres.
- string: almacenan secuencias de caracteres, para formar texto.

qué pasa si queremos hacer 3 frecuencias para un oscilador?

tenemos que crear 3 variables, cada una del tipo float, y si recordamos que en computación contamos desde 0, no desde 1, tenemos:

```chuck
300 => float frec0;
500 => float frec1;
700 => float frec2;
```

si queremos hacer que cada una de estas frecuencias tenga una duración distinta, tenemos que también crear 3 duraciones:

```chuck
0.3 :: second => dur tiempo0;
0.7 :: second => dur tiempo1;
0.5 :: second => dur tiempo2;
```

esto se vuelve rápidamente muy caótico y difícil de abordar. además nos pasa que lo que estamos haciendo es crear una colección de valores, todos del mismo tipo, y en cierto orden, y no necesitamos un nombre para cada uno, nos gustaría hablar de la colección de variables de frecuencias, y la de tiempos.

eso son los arreglos en computación! existen sinónimos en otros lenguajes de programación, como listas, pero aquí hablaremos en genérico de arreglo (o "array" en inglés).
