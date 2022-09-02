# clase-02

viernes 19 de agosto 2022, presencial

## repaso clase pasada y programa de hoy

la clase pasada vimos:

- conocimientos previos de estudiantes sobre música y programación
- artistas mediales, herramientas y empresas de instrumentos musicales digitales

esta clase veremos una breve introducción al sonido digital:

- sonido analógico
- percepción humana de sonido
- análisis de Fourier
- sistemas digitales
- introducción a ChucK
- introducción a Pure Data
- discusión materiales de hardware

## códigos de conducta (15 min)

- reglamento de estudiantes de la Universidad de Chile https://www.uchile.cl/portal/presentacion/senado-universitario/reglamentos/reglamentos-aprobados-o-modificados-por-el-senado-universitario/67177/reglamento-de-estudiantes-de-la-universidad-de-chile)
- berlin code of conduct https://berlincodeofconduct.org/es/
- p5.js community statement https://p5js.org/es/community/

## evaluaciones

- los criterios de evaluaciones están en la páginal principal del curso github.com/montoyamoraga/audiv020-2022-2
- sus notas están disponibles en el Google Doc, cuyo enlace está en nuestro u-cursos.

## sonido analógico

el sonido es una vibración / oscilación. el sonido que escuchamos es una onda que se propaga a través de la atmósfera. esa onda es de cambios en presión atmosférica.

con nuestros oídos e incluso el resto de nuestro cuerpo podemos percibir vibraciones.

para hacer sonido, tenemos que ser capaces de mover aire. el sonido mientras se propaga por el aire, lo hace de forma radial en todas direcciones y a medida que viaja su energía se va disipando.

como el sonido es una magnitud física, podemos modelarla matemáticamente para entenderlo.

lo que hacemos, es fijar un punto (x, y, z) de escucha, nuestro oído o un micrófono, y medir la presión atmósferica en ese punto, como una función del tiempo, que podemos graficar.

## análisis de Fourier

Jean-Baptiste Fourier (1768 - 1830) fue un matemático y físico francés, cuyo apellido le da el nombre al análisis de Fourier y la transformada de Fourier, que son las bases del sonido digital como lo conocemos.

El análisis de Fourier, nos permite entre otras cosas, tomar una onda graficable x(t), y descomponerla como la suma de ondas sinusoidales. esto nos permite pensar en cualquier onda como una combinación de ondas sinusoidales, y a la inversa, si tenemos control sobre ondas sinusoidales, podemos construir cualquier sonido!

gracias al análisis de Fourier, podemos cambiar entre distintos dominios, podemos pensar en el sonido como una magnitud de presión atmosférica en el tiempo, o podemos analizar en cada ventana de tiempo, cuál es la combinación de ondas sinusoidales que nos permiten recrear ese sonido.

## ondas sinusoidales

una onda sinusoidal $A * sin ( 2 \cdot \pi \cdot f \cdot t + \phi)$ se puede describir con las siguientes 3 características:

- amplitud (A): la distancia entre su máximo y su mínimo.
- frecuencia (f): cuán frecuentemente alterna entre su máxima y mínima amplitud.
- fase ($\phi$): la distancia entre el origen del sistema de coordenadas y el cero.

cada una de estas descripciones matemáticas o físicas, que aplican a ondas sinusoidales, pero también a cualquier onda periódica que podemos escuchar, tiene una correspondencia sensorial así:

- la amplitud la percibimos como intensidad (o volumen).
- la frecuencia la percibimos como altura (o nota, en inglés pitch).
- la fase no somos capaz de percibirla en sí misma, solamente en combinación con más sonidos.

## rango humano de percepción de sonido

escuchamos frecuencias entre 20 Hz y 20 kHz. experimento para medir cuál es la frecuencia máxima que podemos escuchar: https://www.youtube.com/watch?v=qNf9nzvnd1k. otros animales tienen distintos rangos de audición (Laurie Anderson hizo un concierto para perros en NYC en 2016 https://www.nytimes.com/2016/01/04/arts/music/laurie-anderson-puts-on-a-concert-for-dogs-in-times-square.html)

nuestra percepción no es lineal. revisemos las curvas isofónicas: https://es.wikipedia.org/wiki/Curva_isof%C3%B3nica. esto nos muestra que en cada curva tenemos la misma percepción de volumen, pero se requieren distintas amplitudes de la onda, según la frecuencia.

para más información, estudiar el área de psicoacústica.

## ondas digitales

para tomar un sonido analógico en el mundo, tenemos que hacer varios procesos:

- podemos tomar un sonido en el aire, una variación en la presión atmosférica, y usar un micrófono, para hacer transducción, convertir esa energía mecánica en energía eléctrica (voltaje).
- ese voltaje, sigue estando en el mundo real, es analógico, tiene un valor con infinitos decimales, en todo instante de tiempo.

nota sobre imposibilidad: si queremos grabar ese valor analógico en memoria digital, como tiene infinitos decimales, necesitamos infinita memoria, por lo que necesitamos truncar o aproximar ese valor si queremos grabarlo. ahora ya grabado, nos damos cuenta que tenemos valores finitos, pero tenemos infinitos de ellos, uno por cada instante de tiempo!

- para poder grabar entonces, primero hacemos sampleo o muestreo, que es perder información en el tiempo, tomar una cantidad de muestras con una cierta frecuencia, decidiendo así la resolución temporal.

- ahora tenemos un número finito de valores, pero cada uno tiene infinitos decimales, así que ahora hacemos el proceso de cuantización, donde decidimos la resolución en valores.

- después de estos 2 procesos, muestreo y cuantización, obtenemos un número finito de valores en el tiempo, que tienen una resolución finita en valores, y que podemos grabar en memoria digital!

## aritmética digital

en decimal, si tenemos el número 123, eso equivale a $1 \cdot 10^2 + 2 \cdot 10^1 + 3 \cdot 10^0$

el sistema decimal se llama así porque la base es 10, lo que implica que usamos 10 números distintos (0, 1, 2, 3, 4, 5, 6, 7, 8, 9), y con la combinación de ellos, podemos escribir todos los otros números como la suma de potencias de la base 10.

en el sistema digital, usamos 2 números: 0 y 1, y escribimos todos los números como una suma de potencias de base 2!

entonces los números quedan así entre decimal y digital:

- 000 -> 000
- 001 -> 001
- 002 -> 010
- 003 -> 011
- 004 -> 100
- 005 -> 101
- 006 -> 110
- 007 -> 111

## introducción a ChucK

ChucK es un lenguaje de programación creado por Ge Wang, que usaremos en este curso, por las siguientes razones:

- es FLOSS: free libre open source software
- corre en los 3 grandes sistemas operativos: Linux, Mac, Windows
- fue creado para el uso en orquesta de computadores
- se programa con líneas de código, y es fácil compartir el código

para instalar ChucK, hay que ir a la web https://chuck.cs.princeton.edu/, y luego ir al enlace de descargar "download ChucK".

en Mac y Windows, usamos el instalador, que crea una app en tu computador llamada miniAudicle.

creemos nuestro primer código en ChucK

```chuck
<<< "hola!" >>>;
<<< 2 + 3 >>>;
<<< "2 + 3" >>>;
```

este texto es líneas de código en ChucK, donde:

- cada línea de código termina en punto y coma
- los espacios entre palabras generalmente no importan, pero nos sirven para ordenar
- si encerrramos texto entre los signos <<< y >>>, ese texto se imprime en la consola
- la primera línea imprime el texto "hola!", debe estar siempre entre comillas dobles
- la segunda línea calcula el resultado de 2 + 3, y luego imprime ese resultado en consola
- la tercera línea imprime el texto "2 + 3" literalmente, lo trata como texto por estar dentro de comillas.

generalmente los lenguajes de programación diferencian entre números y palabras.

notamos que cada vez que corremos este código,

creemos nuestro primer instrumento ocn un oscilador sinusoidal!

primero creamos nuestro oscilador sinusoidal.

después conectamos el oscilador a nuestros parlantes para poder escucharlo.

podemos especificar la amplitud y frecuencia de nuestro oscilador.

si corremos este código, notaremos que no hay sonido.

en ChucK, tenemos que explicitar cuánto tiempo queremos que transcurra, con el comando now.

y también tenemos que prender la máquina virtual.

## introducción a Pure Data

Pure Data es un lenguaje de programación creado por Miller Puckette.

Pure Data funciona de forma visual, donde pequeñas cajitas se interconectan con cables. las cajitas tiene entradas en su parte superior, y salidas en su parte inferior, y permite crear sistemas capaces de hacer cálculos.

para crear nuestro primer instrumento, seguiremos un esquema similar.

primero creamos nuestro oscilador.

creamos una cajita de número para controlar la frecuencia del oscilador, y conectamos la salida del número a la entrada del oscilador.

luego creamos un objeto multiplicador de audio, y conectamos la salida del oscilador, a la entrada izquierda del multiplicador de audio.

luego creamos una cajita de salida de audio, dac~, y conectamos la salida del multiplicador de audio a las entrada izquierda y derecha de la cajita dac~.

ahora nos falta un controlador de volumen, que multiplique al oscilador por un número entre 0.0 y 1.0, así que crearemos esto.

creamos un slider horizontal y una cajita de número, y conectamos la salida del slider a la entrada del número.

notamos que ese número es entero, sin parte decimal, entre 0 y 127. así que creamos una cajita que dice / 127, y conectamos el número a esta cajita de división.

para ver el resultado, creamos otra cajita de número, donde obtenemos el número que queríamos, entre 0.0 y 1.0, y su salida la conectamos a la entrada derecha del multiplicador de audio.

## análisis del instrumento que hemos creado

nuestro instrumento tiene las siguientes características:

- entrada: movimiento mecánico, para lograr que el ratón se mueva, para así controlar los parámetros de amplitud y frecuencia.
- sonido: oscilador sinusoidal
- hardware: computador de escritorio
- software: Pure Data o ChucK.
- salida: parlantes o audífonos, 2 canales (stereo).

## números aleatorios y música

para darle incertidumbre a nuestro instrumento, podemos hacer que la frecuencia o la amplitud no sean siempre la misma, gracias al objeto o función random, presente en los lenguajes de programación.

random generalmente necesita saber un valor máximo, opcionalmente un valor mínimo, opcionalmente el tipo de resultado, si es número entero (int) o con decimales (float).

## discusión de hardware

| hardware | lenguaje               | pros                           | contras                        |
| :------- | :--------------------- | :----------------------------- | ------------------------------ |
| Arduino  | Arduino (C++)          | muchos ejemplos, barato (~30K) | audio de baja calidad          |
| Teensy   | Teensy/Arduino (C++)   | buena documentación, audio HD  | más caro (~50k)                |
| Adafruit | CircuitPython (Python) | Python es muy útil             | más caro (~50k), menos popular |

ejemplos:

con Arduino, vamos a hacer pequeños instrumentos con perillas, botones, que pueden hacer sonidos de osciladores, listo.

con Teensy, tenemos micrófono, tarjeta SD, y podemos hacer un sampler que grabe y reproduzca y manipule sonido.

con Adafruit podemos hacer , pero escribiendo más código, y con muchos menos ejemplos. la gracia es que aprendemos Python, que es muy útil para todo!

Reactable está hecho en Pure Data!
