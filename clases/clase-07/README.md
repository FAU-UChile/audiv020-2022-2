# clase-07

viernes 30 de septiembre 2022, presencial

esta clase veremos los conceptos de grabar, samplear y buffers

la clase pasada vimos:

- ecología en la obra de Peter Blasser
- ecología en la obra de Hundred Rabbits
- ecología en la obra de compudanzas

esta clase veremos los conceptos de grabar, samplear y buffers

- grabar sonido
- samplear sonido
- buffers de audio
- consideraciones técnicas y estéticas del sampleo
- implementaciones en ChucK
- implementaciones en Pure Data

## grabar sonido

a grandes rasgos, hasta hace 150 años podíamos solamente escuchar lo que nos rodeaba, una vez. con la invención de la radio, logramos transmitir sonido a través de distancias y así no solamente escuchar lo que nos rodea físicamente. ya con la invención de la grabación y reproducción pudimos ser capaces de grabar sonido y volver a escucharlo.

para grabar es tomar un sonido acústico, usar un sensor para transducir esa energía y almacenarla en un medio físico. ese medio físico puede ser análogo, como una cinta o un vinilo, o digital, como en un computador, que es lo que veremos en este curso.

al grabar de forma digital, estamos representando un sonido como una secuencia de números, que ordenamos y guardamos en un archivo, para luego poder usarlo.

otro enfoque es usar un software y un computador como en nuestro caso con ChucK y Pure Data, para no solamente emitir el sonido que estamos creando a nuestros parlantes, sino que podemos directamente crear un espacio en la memoria de nuestro computador y luego almacenar ese resultado en un archivo que podemos grabar, copiar, almacenar y reproducir.

ojo, ningún método de grabación es perfecto y totalmente fiel, siempre el sonido al pasar por un sensor para su captura, el sensor le imprime una cierta calidad sonora, y así se forman estéticas distintas, a veces deseadas, a veces indeseadas.

lo mismo ocurre con los parlantes, todos los parlantes tienen sus particularidades, y a su vez, todas las personas escuchan distinto, entonces la experiencia de escuchar es única y personal.

## samplear sonido

samplear (del inglés "sample", muestra) es el nombre que recibe el uso de una porción de una grabación de sonido existente, para crear otro sonido.

samplear es un cambio de paradigma: ya no necesitamos usar un gesto físico para tocar un instrumento acústico o electrónico que sea capaz de transducir a un sonido, sino que reusamos un sonido grabado, independiente de su fuente, para crear nuevos sonidos.

los instrumentos llamados samplers nos permiten cargar archivos de sonido, manipularlos creativamente y reproducirlos, a veces incluso tienen mecanismos para grabar directamente en el instrumento.

uno de los instrumento que permitió esta revolución es el Akai MPC diseñado por Roger Linn, al que le atribuimos la popularidad del hip hop, y también calidades estéticas por su cuantización a 12 bits.

revisemos estos ejemplos de sampleo.

- The Avalanches - Frontier Psichiatrist (2001) https://www.youtube.com/watch?v=qLrnkK2YEcE
- Björk - Triumph of a heart https://www.youtube.com/watch?v=0z-rhM-dcO8
- Mark Ronson - How sampling transformed music (2014) https://www.youtube.com/watch?v=H3TF-hI7zKc
- El sueño de la casa propia - Acomódate en el suelo https://www.youtube.com/watch?v=4SpiGFQ_98c
- Danger Mouse - The Grey Album (2004) https://www.youtube.com/watch?v=X-iA7AyFlU0
- M.I.A. - Paper Planes (2009) https://www.youtube.com/watch?v=ewRjZoRtu0Y

## buffers de audio

en la estructura de un computador tenemos nuestro disco duro donde tenemos archivos.

nuestros programas en ChucK, Pure Data, o similares, nos permiten crear pequeños espacios en memoria que solamente existen mientras el programa está operando, y donde podemos almacenar información.

esa información pueden ser números que calculamos, como una variable, o dibujos que hacemos en la pantalla con nuestra gestualidad capturada por sensores, o puede ser un archivo de audio que vive en nuestro disco duro.

el lugar de memoria donde cargamos y luego leemos sonido le llamaremos buffer de audio, y será la base para construir un sampler.

la gracia de un buffer, es que nos permite leer un archivo, cargarlo, y luego hacer manipulaciones creativas como reproducir el archivo a distintas velocidades y direcciones, o incluso filtrarlo y manipularlo, sin hacer modificaciones en el archivo original. los buffers nos permiten manipulación creativa de forma no destructiva.

## consideraciones técnicas y estéticas del sampleo digital

cuando convertimos audio analógico a audio digital, ocurren todos estos pasos:

- usamos un sensor como un micrófono para capturar una onda continua análoga. el sensor no es ideal, e introduce una cierta distorsión o compresión al sonido.
- luego tenemos que decidir una frecuencia de muestreo, se mide en Hz, por ejemplo para CDs es 44,100 Hz. esto influye en la calidad de audio, al cambiar la máxima frecuencia que escucharemos.
- luego tenemos que decidir la resolución de cada una de esas muestras. en un CD es 16 bits, lo que equivale a 2^16 posibles valores, lo que da una alta fidelidad de audio. en contraste, los sistemas de videojuegos ochenteros usan calidades de 8 bits, lo que introduce distorsión y falta de fidelidad en la onda.

entonces, resumiendo:

- la frecuencia de muestreo impacta en el ancho de banda o máximas frecuencias que seremos capaces de escuchar. se mide en Hz.
- la

## instrumentos de inspiración: Critter & Guitari Kaleidoloop

![critter-and-guitari-kaleidoloop](./imagenes/critter-and-guitari-kaleidoloop.jpg 'critter-and-guitari-kaleidoloop')

este instrumento tiene las siguientes características:

- entradas y salidas
  - 1 entrada con cable 1/4" TS mono, o un micrófono condensador incluido
  - 1 salida con cable 1/4" TS mono, o el parlante incorporado.
- almacenamiento
  - 1 tarjeta SD para escribir y leer audio.
- interfaz de usuario
  - 1 perilla de volumen
  - 1 perilla de velocidad de reproducción
  - 1 botón para alternar entre grabar o reproducir
  - 1 botón para alternar entre modo continuo o escalonado de frecuencia
  - 2 botones para navegar samples, adelante y atrás

más info:

- https://www.youtube.com/watch?v=nt6CW3oEItk

inspiración:

- The Beatles - In My Life (1965) https://www.youtube.com/watch?v=YBcdt6DsLQA
- The Beatles - Tomorrow Never Knows (1966) https://www.youtube.com/watch?v=pHNbHn3i9S4

## instrumentos de inspiración: Akai MPC

Akai es una empresa japonesa, y MPC viene de las siglas en inglés de Centro de Producción musical, y consiste en una línea de instrumentos creada en 1988.

este instrumento se convirtió en una revolución, por su menor costo a los samplers de la época, y por el diseño de Roger Linn, uno de los diseñadores de instrumentos electrónicos más influyentes.

en particular, su Akai MPC resalta por su configuración de 4x4 pads, para control expresivo y dactilar de los samples.

posibles comportamientos en cuanto a posición de reproducción:

1. presionas un pad y un sample empieza a reproducirse, si lo sueltas, sigue corriendo hasta el final.
2. presionas un pad y un sample empieza a reproducirse, si lo sueltas, se pausa, y puedes continuar su reproducción al presionarlo de nuevo.
3. presionas un pad y un sample empieza a reproducirse, si lo sueltas, se detiene, y vuelve a su posición original.

fuente: https://nmaahc.si.edu/object/nmaahc_2014.139.1

J Dilla usa Akai MPCs y también otros samplers, incluyendo la línea Boss SP-303 y similares. ejemplo: Don't Cry https://www.youtube.com/watch?v=hXeywtmWKzU

Jamie XX es la persona a cargo de los ritmos y sintetizadores en la banda The XX, recomiendo verlo en vivo y su uso de Akai MPC. ejemplo: Intro https://www.youtube.com/watch?v=9f__FGEfQ14

## instrumentos de inspiración: Korg Volca Sample

Korg Volca Sample fue diseñado por Tatsuya Takahashi, como parte de la colleción de instrumentos Volca de la empresa Korg, de bajo costo y para principiantes.

más info:

- https://www.tatsuyatakahashi.com/2014-korg-volca-sample
- https://www.youtube.com/watch?v=THImd641WXk
- https://www.youtube.com/watch?v=8kmb1VlAtZ4

## instrumentos de inspiración: BASTL microgranny

BASTL microgranny es un instrumento creado a partir del clásico Arduino Uno, tiene micrófono y parlantes incorporados, y permite crear un tipo de síntesis llamado granular y agregar distorsión digital a nuestros samples.

más info:

- https://bastl-instruments.com/instruments/microgranny/
- https://github.com/bastl-instruments/microGranny2
- https://www.youtube.com/watch?v=8X0URbZn9hQ

## instrumentos de inspiración: Ciat-Lonbarde Cocoquantus

Ciat-Lonbarde es una colección de instrumentos creada por Peter Blasser. en particular, su instrumento Cocoquantus posee dos buffers digitales, con sampleo de 8 bits, que están constantemente recorriéndose en bucle, y podemos en cualquier momento leer o escribir en ellos mientras corren. https://www.ciat-lonbarde.net/ciat-lonbarde/cocoquantus/index.html

Hainbach Ciat-Lonbarde Cocoquantus - Playing and Patching Techniques
https://www.youtube.com/watch?v=z0KoI95DfZU

PanicGirlVids - The Cocoquantus by Ciat-Lonbarde - Basic Patch From Scratch
https://www.youtube.com/watch?v=lQAHxeVrEqM

## implementaciones en ChucK y Pure Data

hay 3 ejemplos hoy:

1. ejemplos en ChucK y Pure Data para cargar sonido a partir de un archivo de audio y reproducirlos.

2. ejemplo en Pure Data de grabar micrófono en vivo y reproducir ese sonido.

3. ejemplo en Pure Data de grabar micrófono en vivo, reproducir, y exportar el archivo, para luego poder cargarlo y seguir manipulándolo.
