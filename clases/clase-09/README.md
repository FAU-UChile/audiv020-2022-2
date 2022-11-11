# clase-09

viernes 14 de octubre 2022, presencial

la clase pasada vimos:

- concepto de delay
- parámetros de delay
- reverb
- ejemplos de delay y reverb

esta clase veremos los conceptos de aleatoriedad y ruido digital

- aleatoriedad y pseudo-aleatoriedad
- estrategias para aleatoriedad
- composiciones con aleatoriedad
- ruido
- composiciones con ruido
- próxima clase

## aleatoriedad y pseudo-aleatoriedad

los computadores no son capaces de generar aleatoriedad.

para aleatoriedad en computación, existen servicios como https://www.random.org/, que usa información proveniente de ruido atmosférico.

existe el concepto de semilla o "seed" en inglés, que permite recrear secuencias de números pseudo aleatorios en un sistema computacional, lo que no es posible con un sistema aleatorio. esto es útil para experimentos o replicar secuencias, pero demuestra que los números que un computador es capaz de generar no son realmente aleatorios.

## estrategias para aleatoriedad

lanzar dado:

- resultado es un número entero
- entre un mínimo y un máximo
- cada número tiene la misma probabilidad

lanzar dado cargado:

- los números posibles tienen distintas probabilidades.

tomar carta:

- el mazo tiene N cartas
- cualquier carta puede salir
- podemos fijarnos en número, color, u otro parámetro

número aleatorio normalizado:

- resultado es un número decimal entre 0 y 1.
- la probabilidad puede ser uniforme, normal https://es.wikipedia.org/wiki/Distribuci%C3%B3n_normal u otra.
- podemos trasladar el resultado a cualquier otro rango usando suma y multiplicación.

## instrumentos con aleatoriedad

- Brian Eno y Peter Schmidt - Oblique Strategies https://stoney.sb.org/eno/oblique.html
- Buchla - 266E Source of Uncertainty https://buchla.com/product/266e/
- Macumbista - Benjolin https://www.youtube.com/watch?v=H-B82VLzu1E&t=65s
- Make Noise - WoggleBug https://makenoisemusic.com/modules/richter-wogglebug
- Mutable Instruments - Marbles https://mutable-instruments.net/modules/marbles/

## composiciones con aleatoriedad

- John Cage - 4'33" https://www.youtube.com/watch?v=AWVUp12XPpU
- John Lennon, Yoko Ono - Radio Play https://www.youtube.com/watch?v=tSXYsQy3FW0
- Radiohead - The National Anthem https://www.youtube.com/watch?v=DcCSTs9UHhY
- Terry Riley - In C https://www.youtube.com/watch?v=DpYBhX0UH04

## ruido

- ruido blanco: https://es.wikipedia.org/wiki/Ruido_blanco

- ruido café: https://es.wikipedia.org/wiki/Ruido_marr%C3%B3n

- ruido rosado: https://es.wikipedia.org/wiki/Ruido_rosa

- ruido Perlin: https://es.wikipedia.org/wiki/Ruido_Perlin

videos:

- comparación entre ruido blanco, rosado y café https://www.youtube.com/watch?v=Rb0M5cCdoPg
- The Nature of Code https://natureofcode.com/book/introduction/
- video Daniel Shiffman sobre Perlin Noise https://www.youtube.com/watch?v=YcdldZ1E9gU

## instrumentos con ruido

- ARP- 2600 https://www.korg.com/cl/products/synthesizers/arp2600_fs/
- Flower Electronics - Jealous Heart https://www.youtube.com/watch?v=6V_Enilh4wg
- Moog - DFAM https://www.moogmusic.com/products/dfam-drummer-another-mother
- Tristan Perich - Microtonal wall https://www.youtube.com/watch?v=MJSgaEaZytg

## composiciones con ruido

- The Beatles - I Want You https://www.youtube.com/watch?v=tAe2Q_LhY8g
- Evic Shen - live at Kaneko 5.13.22 https://www.youtube.com/watch?v=SrKZrbKObco
- clipping. - Full Performance (Live on KEXP) https://www.youtube.com/watch?v=1qd97k4Jr80
- Marc Ribot's Ceramic Dog - Your Turn https://www.youtube.com/watch?v=V9HhkU9AbeQ

## implementaciones en ChucK

esta es la referencia de distintas funciones aleatorias que usaremos en ChucK hoy https://chuck.cs.princeton.edu/doc/program/stdlib.html

entre ellas:

```chuck
Math.random();
Math.random2(min, max);
Math.randomf();
Math.random2f(min, max);
```

## implemenentaciones en Pure Data

el objeto random tiene un argumento de número entero. ese número entero define cuántas posibilidades tiene este número aleatorio. si el argumento es N, los números posibles de salida van entre 0 y N-1. entonces usaremos el argumento para definir cuántas posibilidades existen, y luego con aritmética podemos cambiar el rango de operación.

## próxima clase

- empezaremos a usar nuestras placas Adafruit Circuit Playground Express / Bluefruit!
- trabajaremos en grupos de 2 o 3 personas!
- aprenderemos Python!
