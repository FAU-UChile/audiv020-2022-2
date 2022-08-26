# clase-03

viernes 26 de agosto 2022, presencial

la clase pasada vimos:

- sonido analógico
- percepción humana de sonido
- análisis de Fourier
- sistemas digitales
- introducción a ChucK
- introducción a Pure Data
- discusión materiales de hardware

esta clase veremos los conceptos de envolvente y filtros:

- generadores de envolventes
- envolvente AD
- envolvente ADSR
- ruido blanco
- definición de filtro y sabores de filtros
- filtro pasabandas
- implementaciones en ChucK
- implementaciones en Pure Data

## generadores de envolventes

la clase pasada conectamos osciladores directamente a parlantes.

agregamos un control de volumen para poder controlar el volumen.

en vez de nosotros tener que hacer un gesto cada vez que queramos cambiar el volumen, y tener un control directo de este parámetro, podemos describir una curva de volumen en el tiempo, que parta y termine en silencio, y tener un control que solamente controle cuando el sonido empieza.

las envolventes no solamente se ocupan para controlar volumen, podemos usar envolventes para controlar frecuencias de osciladores, frecuencias de filtro,y en general para darle movimiento o una curva a cualquier parámetro en un instrumento musical.

el sonido digital es bipolar, tiene valores positivos y negativos, y generalmente hablamos de que la amplitud mínima es -1.0 y la amplitud máxima es 1.0

estas ondas de audios bipolares, queremos cambiar su amplitud máxima, y para esto nos basta con ondas unipolares, solamente con valores positivos, entre 0 y 1.0, que usamos para multiplicar las ondas de sonido, y así cambiar su amplitud.

más info:

- https://es.wikipedia.org/wiki/Envolvente_ac%C3%BAstico
- https://en.wikipedia.org/wiki/Envelope_(music)
- https://learningsynths.ableton.com/en/envelopes/change-over-time
- https://learningsynths.ableton.com/en/envelopes/synthesizer-envelopes

## envolvente AD

la forma más simple de envolvente, es en la que un gesto acciona el inicio del envolvente, y luego este va de silencio a un valor máximo en una cierta cantidad de tiempo, y luego baja inmediatamente a un valor mínimo en otra cantidad de tiempo.

- A viene de "attack", inglés de ataque. lo reemplazaremos por arribo, para fomentar lenguaje no violento.
- D viene de "decay", inglés de decaimiento.

este tipo de envolvente posee estos dos parámetros, A y D, que son los tiempos
que le dan dinamismo a nuestros sonidos, y tradicionalmente se usan en sonidos percusivos.

## envolvente ADSR

la envolvente ADSR tiene 2 parámetros adicionales a los que ya conocemos AD, que significan:

- S viene de "sustain", inglés de sostenimiento.
- R viene de "release", inglés de relajo.

ahora la coreografía de nuestro generador envolvente es la siguiente:

- el generador de envolvente recibe una señal para sonar.
- con esto, su amplitud va de 0 a su valor máximo 1.0, demorándose el tiempo A de arribo.
- inmediatamente después, decae a una cierta amplitud, demorándose el tiempo D de decaimiento.
- mientras la señal para sonar sigue activa, se mantiene la amplitud S de sostenimiento de la envolvente.
- cuando la señal de sonar es inactiva, la envolvente va desde la amplitud de sostenimiento S a cero, demorándose el tiempo R de relajo.

nota: generalmente los cambios de amplitud se diseñan con líneas rectas, pero también se pueden usar otras curvas, como exponenciales o logarítmicas.

## ruido blanco

antes de ver filtros, en vez de usar nuestro oscilador que hemos estado usando, introduciremos el concepto de ruido blanco.

el ruido blanco es el resultado de sumar todas las sinusoides posibles con igual probabilidad. el análisis de Fourier es una línea recta.

existen otros tipos de ruidos, como el ruido rosado o el ruido café, que veremos en otra clase.

usaremos este sonido rico en frecuencias, como un gran cubo de piedra, y usaremos los filtros para recortar frecuencias de este sonido y sentir sus efectos en los sonidos.

## envolventes para otros parámetros

también podemos usar envolventes para controlar otros parámetros de sonidos:

- en un oscilador, podemos usar un envolvente para cambiar su frecuencia.
- en un filtro, podemos usar un envolvente para cambiar su frecuencia de corte.

- https://learningsynths.ableton.com/en/envelopes/attack
- https://learningsynths.ableton.com/en/envelopes/release
- https://learningsynths.ableton.com/en/envelopes/putting-the-envelope-together

## definición de filtro y sabores de filtros

los filtros son efectos, a los cuales ingresa audio y sale audio.

son muy parecidos a una envolvente a un multiplicador, en el sentido de que son capaces de manipular la amplitud de la onda.

la gracia de los filtros es que no afectan a todo el sonido, pueden afectar al sonido dependiendo de las frecuencias que lo componen.

según su funcionamiento, reciben distintos nombres y poseen distintos parámetros. los más simples son:

- filtro pasabajos: tiene una frecuencia de corte, y todo las frecuencias bajo esa frecuencia de corte no son afectadas por el filtro, y todas las frecuencias arriba de la frecuencia de corte son atenuadas e incluso eliminadas.

- filtro pasaaltos: tiene una frecuencia de corte y un comportamiento inverso al filtro pasabajos, deja pasar todas las frecuencias sobre la de corte, y las que están bajo la frecuencia de corte son atenuadas o eliminadas.

otro filtro interesante es el filtro pasabanda, que tiene una frecuencia central, y un ancho de banda, y solamente deja pasar las frecuencias en torno a la frecuencia central, y el ancho de banda determina el alcance de eso. en guitarra eléctrico esto recibe el nombre de wah wah por el sonido que hace.

## implementaciones en ChucK

veremos cómo hacer envolventes, ruido blanco y filtros.

## implementaciones en Pure Data

veremos cómo hacer envolventes, ruido blanco y filtros.
