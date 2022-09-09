# clase-05

viernes 09 de septiembre 2022, presencial y online

intro a teoría musical occidental Y MIDI

la clase pasada vimos:

- diferencia entre variables y arreglos
- estrategias de arreglos
- implementaciones en ChucK
- implementaciones en Pure Data

esta clase veremos intro a teoría musical occidental Y MIDI:

- percepción de alturas y notas musicales
- notación musical
- mensajes de notas MIDI
- mensajes de control MIDI

## percepción de alturas y notas musicales

aproximadamente, las personas escuchan frecuencias entre 20 Hz y 20 kHz.

al cambio de frecuencia física de un sonido, perceptualmente le llamamos altura.

las frecuencias o alturas bajas reciben el nombre de graves.

las frecuencia o alturas altas reciben el nombre de agudas.

cuando la frecuencia sube, nuestra percepción dice que la altura sube, y tiene el siguiente comportamiento.

si tenemos una onda sinusoide con frecuencia X, entonces las frecuencias entre X y 2X las sentimos como alturas distintas, pero algo especial pasa con el doble de una frecuencia: la sentimos como una altura distinta, pero con el mismo sabor.

si decimos que existe una nota LA, a cierta frecuencia, entonces el doble de esa frecuencia también es LA, y el doble de esa, y el doble y el doble y así, y también cuenta con el inverso, la mitad de la frecuencia de LA, y la mitad.

entonces si la frecuencia de X Hz le llamamos LA: entonces estas notas también son La.

- X/8 Hz
- X/4 Hz
- X/2 Hz
- X Hz
- 2X Hz
- 4X Hz
- 8X Hz
- 16X Hz

ahora el problema es, qué notas hay entre un LA y el siguiente LA? y cuántas?

## escalas musicales

en música occidental

## afinación estándar

antes de

## notación musical

el teclado de un piano tiene 88 teclas.

en computación almacenamos la información en bits, y cada bit adicional duplica la cantidad de información que podemos almacenar, así:

- 01 bit => 0002 estados posibles
- 02 bit => 0004 estados posibles
- 03 bit => 0008 estados posibles
- 04 bit => 0016 estados posibles
- 05 bit => 0032 estados posibles
- 06 bit => 0064 estados posibles
- 07 bit => 0128 estados posibles
- 08 bit => 0256 estados posibles
- 09 bit => 0512 estados posibles
- 10 bit => 1024 estados posibles

vemos que si tenemos 88 teclas de un piano, que son 88 notas musicales, con 7 bits podemos contarlas, y nos sobran notas incluso.

en música occidental, definimos que hay 12 notas musicales:

| nombre nota solfeo | nombre nota inglés |
| :----------------- | :----------------- |
| do                 | C                  |
| do sostenido       | C#                 |
| re                 | D                  |
| re sostenido       | D#                 |
| mi                 | E                  |
| fa                 | F                  |
| fa sostenido       | F#                 |
| sol                | G                  |
| sol sostenido      | G#                 |
| la                 | A                  |
| la sostenido       | A#                 |
| si                 | B                  |

estas 12 notas están separadas una de otro por un semitono.

de esas 12 notas, hay 7 notas con un nombre a secas, en este orden:

- do
- re
- mi
- fa
- sol
- la
- si

entre cada una de ellas, hay un espacio de un tono, con dos excepciones:

- entre mi y fa, hay un semitono
- entre si y do, hay un semitono

entonces, entre estas notas hay una nota justo al medio:

- entre do y re
- entre re y mi
- entre fa y sol
- entre sol y la
- entre la y si

para nombrarlas, podemos usar:

- sostenido (#): un semitono más arriba
- bemol (b): un semitono más abajo

y con eso queda:

| descripción nota solfeo | nombre nota con sostenido | nombre nota con bemol |
| :---------------------- | :------------------------ | --------------------- |
| entre do y re           | do# o C#                  | reb o Db              |
| entre re y mi           | re# o D#                  | mib o Eb              |
| entre fa y sol          | fa# o F#                  | solb o Gb             |
| entre sol y la          | sol# o G#                 | lab o Ab              |
| entre la y si           | la# o A#                  | sib o Bb              |

## mensajes de notas MIDI

## mensajes de control MIDI
