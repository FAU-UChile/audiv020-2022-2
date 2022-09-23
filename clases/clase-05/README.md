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

entonces si la frecuencia de X Hz le llamamos LA: entonces estas notas también son LA.

- X/8 Hz
- X/4 Hz
- X/2 Hz
- X Hz
- 2X Hz
- 4X Hz
- 8X Hz
- 16X Hz

veamos ahora qué será LA en este curso.

## LA estándar

antes de la invención de mecanismos para grabar y reproducir sonido, solamente podíamos escuchar sonidos siendo reproducidos en vivo, y no había capacidad de repetirlos.

las orquestas locales muchas veces tenían su propia definición de LA como referencia.

creo que con la invención de la grabación y reproducción, además de la baja en costos de viajes y el intercambio entre músicos, que viajaban a un lugar con un piano afinado en cierta nota, hubo la necesidad de crear un estándar.

se decidió que la afinación estándar sería LA = 440 Hz, para el LA que está justo arriba del DO central en un piano.

es una decisión, no tiene que ver con física, ni con la percepción.

mas info:

- https://es.wikipedia.org/wiki/La_440
- https://en.wikipedia.org/wiki/A440_(pitch_standard)

ahora el problema es, qué notas hay entre un LA y el siguiente LA? y cuántas?

## escala cromática occidental

en música occidental decimos que hay 12 notas distintas.

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

estas 12 notas están separadas una de otro por un semitono, entonces entre cualquier nota y la siguiente, hay 12 notas, o 12 semitonos.

de esas 12 notas, hay 7 notas con un nombre a secas, en este orden:

- do
- re
- mi
- fa
- sol
- la
- si

entre cada una de ellas, hay un espacio de 1 tono, con 2 excepciones:

- entre mi y fa, hay 1 semitono
- entre si y do, hay 1 semitono

entonces, entre estas notas hay 2 semitonos, o sea, una nota justo al medio:

- entre do y re
- entre re y mi
- entre fa y sol
- entre sol y la
- entre la y si

para nombrarlas, podemos usar:

- sostenido (#): 1 semitono más arriba
- bemol (b): 1 semitono más abajo

y con eso queda:

| nombre nota solfeo | nombre nota con sostenido | nombre nota con bemol |
| :----------------- | :------------------------ | --------------------- |
| entre do y re      | do# o C#                  | reb o Db              |
| entre re y mi      | re# o D#                  | mib o Eb              |
| entre fa y sol     | fa# o F#                  | solb o Gb             |
| entre sol y la     | sol# o G#                 | lab o Ab              |
| entre la y si      | la# o A#                  | sib o Bb              |

## escala Do mayor

la escala que un piano privilegia, y también los nombres de las notas, es la escala de Do mayor, que tiene estas 7 notas, en este orden.

- do
- re
- mi
- fa
- sol
- la
- si

la octava nota sería el siguiente do más arriba, por eso esa distancia entre dos notas con el mismo nombre recibe el nombre de octava.

entonces, entre un LA y el siguiente LA hay esta distancia, son todas equivalentes:

- 1 octava
- 12 semitonos
- 6 tonos

de esas 12 notas, la escala mayor elige 7, la primera le da el nombre, y los intervalos entre cada nota y la primera nota son:

- nota 1 = nota base (do)
- nota 2 = nota base + 02 semitonos (re)
- nota 3 = nota base + 04 semitonos (mi)
- nota 4 = nota base + 05 semitonos (fa)
- nota 5 = nota base + 07 semitonos (sol)
- nota 6 = nota base + 09 semitonos (la)
- nota 7 = nota base + 11 semitonos (si)

o también podemos verlo con cuánta distancia hay entre cada nota y la nota anterior:

- nota 1 = nota base (do)
- nota 2: nota 1 + 2 semitonos (re)
- nota 3: nota 2 + 2 semitonos (mi)
- nota 4: nota 3 + 1 semitonos (fa)
- nota 5: nota 4 + 2 semitonos (sol)
- nota 6: nota 5 + 2 semitonos (la)
- nota 7: nota 6 + 2 semitonos (si)

si tocamos secuencias sucesivas de notas, estaremos usando la escala de do mayor, y tendremos armonías agradables que no chocan entre sí, ni tensiones muy fuertes en la música.

## acordes tríadas

hay dos acordes que se usan mucho en música popular: acordes mayores y acordes menores.

ambos son acordes tríadas, esto es, son 3 notas al mismo tiempo.

este es el algoritmo para un acorde mayor:

- nota 1: nota base
- nota 2: nota base + 4 semitonos
- nota 3: nota base + 7 semitonos

este es el algoritmo para un acorde menor:

- nota 1: nota base
- nota 2: nota base + 3 semitonos
- nota 3: nota base + 7 semitonos

como vemos, los acordes mayores y menores tienen las siguientes características:

- nota base que le da el nombre al acorde
- nota 3 que está 7 semitonos más arriba que la nota base
- nota 2 es la que hace la diferencia, si está más cerca de nota 1 es acorde menor, si está más cerca de nota 3 es acorde mayor

si volvemos a la escala de do mayor y construimos un acorde en do, veamos:

- nota 1: do
- nota 2: re
- nota 3: mi
- nota 4: fa
- nota 5: sol
- nota 6: la
- nota 7: si

- la nota raíz será do
- la siguiente es mi, que está a 4 semitonos de do
- la siguiente es sol, que está a 7 semitonos de do

por lo tanto las notas do-mi-sol son un acorde do mayor.

no podemos hacer un acorde do menor, usando las notas de la escala de do mayor, ya que no tenemos acceso al mi bemol.

veamos qué acordes son los otros:

- acorde 1: do - mi - sol = acorde do mayor = CM
- acorde 2: re - fa - la = acorde re menor = Dm
- acorde 3: mi - sol - si = acorde mi menor = Em
- acorde 4: fa - - la - do = acorde fa mayor = FM
- acorde 5: sol - si - re = acorde sol mayor = GM
- acorde 6: la - do - mi = acorde la menor = Am
- acorde 7: si - re - fa = acorde si disminuido = Bdim

si usamos todos estos acordes en una canción, la canción está en escala de do mayor.

## inspiración notación MIDI

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

entonces si tenemos 7 bits, podemos enumerar todas las notas de un piano usando un computador.

pero cada nota no solamente tiene el comportamiento de estar sonando o no. también tiene un cierto volumen, así que también necesitaremos una forma de contar todos los volúmenes distintos que tiene una nota.

## implementación MIDI

la unidad fundamental de información en un computador es un bit (del inglés "pedacito" o también dígito binario, del inglés "binary digit".

un bit es un componente eléctrico, que como un interruptor puede tener 2 estados, que son llamados de estas formas equivalentes:

- 0 / 1
- verdad / falso (true / false)
- prendido / apagado (on / off)
- 0V / 5V
- 0V / 3.3V

un bit solamente nos permite contar desde 0 a 1.

ya dijimos que con 7 bits podemos contar hasta 128, lo que es una buena resolución para definir eventos musicales en un piano.

también dijimos que necesitaremos especificar no solamente qué nota está siendo tocada, sino que también con qué volumen suena.

como 8 bits, también llamado 1 byte, es un múltiplo muy usado en computación para contar pedazos de información, se decidió usarlo para los mensajes musicales, y el bit extra se usa para hacer mensajes de este tipo:

1xxxxxxx 0xxxxxxx 0xxxxxxx

entonces en un mensaje MIDI, mandaremos mensajes de 3 bytes de largo = 24 bits.

pero cómo sabemos cuál es el primero? revisamos el primer bit de cada byte, y el que dice 1 es el primer byte, y los siguientes 2 que empiezan con cero son información adicional.

en general, los mensajes serán así:

1tttcccc 0ddddddd 0ddddddd

donde:

- ttt = tipo de mensaje, 3 bits => 8 tipos de mensaje
-

veamos 2 típicos mensajes MIDI y su composición.

## mensajes de notas MIDI

los mensajes de notas MIDI, dicen toda esta información:

- mensaje tipo nota encendida
- canal, entre 0 y 15
- nota a tocar, entre 0 y 127
- velocidad a tocar, entre 0 y 127

mensaje de nota encendida = 1001cccc 0nnnnnnn 0vvvvvvv

donde:

- 1001 es nota encendida
- cccc es canal, 4 bits => 16 opciones, 0 a 15
- nnnnnnn es nota, 7 bits => 128 opciones, 0 a 127
- vvvvvvv es velocidad, 7 bits => 128 opciones, 0 a 127

## mensajes de control MIDI

los instrumentos MIDI también tienen perillas que cambian el valor interno de variables o parámetros, y esos mensajes los podemos recibir y enviar, y dicen toda esta información:

- mensaje tipo control
- canal, entre 0 y 15
- número de controlador, entre 0 y 127
- valor del controlador, entre 0 y 127

mensaje de control = 1011cccc 0nnnnnnn 0vvvvvvv

donde:

- 1001 es mensaje de control (en inglés CC por control change)
- cccc es canal, 4 bits => 16 opciones, 0 a 15
- nnnnnnn es número de controlador, 7 bits => 128 opciones, 0 a 127
- vvvvvvv es valor de controlador, 7 bits => 128 opciones, 0 a 127
