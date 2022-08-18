# clase-02

viernes 19 de agosto 2022, presencial

## repaso clase pasada y programa de hoy

la clase pasada vimos:

#

esta clase veremos una breve introducción al sonido digital:

- sonido analógico
- percepción humana de sonido
- análisis de Fourier
- sistemas digitales

## códigos de conducta (15 min)

- reglamento de estudiantes de la Universidad de Chile https://www.uchile.cl/portal/presentacion/senado-universitario/reglamentos/reglamentos-aprobados-o-modificados-por-el-senado-universitario/67177/reglamento-de-estudiantes-de-la-universidad-de-chile)
- berlin code of conduct https://berlincodeofconduct.org/es/
- p5.js community statement https://p5js.org/es/community/

## evaluaciones

- los criterios de evaluaciones están en la páginal principal del curso github.com/montoyamoraga/audiv020-2022-2
- sus notas están disponibles en el Google Doc, cuyo enlace está en nuestro u-cursos.

## sonido analógico

el sonido es una vibración

con nuestros oídos e incluso el resto de nuestro cuerpo podemos percibir vibraciones.

son vibraciones en torno a la presión atmosférica.

## análisis de Fourier

Fourier postuló que cualquier onda puede ser descompuesta como la suma de otras ondas. en particular podemos usar ondas sinusoidales.

podemos ver cualquier onda, en particular, de sonido, como la suma de ciertas ondas sinusoidales.

entonces el corolario es que si tenemos acceso a crear y controlar ondas sinusoidales, podemos recrear otras ondas, otros sonidos.

## percepción humana de sonido

escuchamos sonido entre 20 Hz y 20 kHz.

una onda sinusoidal $A * sin ( 2 \cdot \pi \cdot f \cdot t + \phi)$ se puede describir con las siguientes 3 características:

- amplitud (A): la distancia entre su máximo y su mínimo.
- frecuencia (f): cuán frecuentemente alterna entre su máxima y mínima amplitud.
- fase ($\phi$): la distancia entre el origen del sistema de coordenadas y el cero.

nuestra percepción no es lineal. revisemos un gráfico de intensidad de volumen igual.

para más información, estudiar el área de psicoacústica.

## ondas digitales

para tomar un sonido analógico en el mundo, tenemos que hacer varios procesos:

- podemos tomar un sonido en el aire, una variación en la presión atmosférica, y usar un micrófono, para hacer transducción, convertir esa energía mecánica en energía eléctrica.
-

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
