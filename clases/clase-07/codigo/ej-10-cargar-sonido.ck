// ej-10-cargar-sonido.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit
// ejemplo inspirado en y traducido de
// https://chuck.cs.princeton.edu/doc/examples/basic/sndbuf.ck

// creamos un buffer y lo conectamos a parlantes
SndBuf sonido => dac;

// nombre de archivo de audio
"sonido-aplauso.wav" => string nombreArchivo;
// "sonido-silbido.wav" => string nombreArchivo;

// imprimir direccion de este archivo
<<< me.dir() >>>;

// variable para la direccion completa
// el archivo de audio vive en la misma carpeta que este archivo
me.dir() + nombreArchivo => string direccionAudio;

// leer el archivo de sonido y cargarlo en el buffer
direccionAudio => sonido.read;

// bucle infinito
while (true) {

    // rebobinar el buffer
    0 => sonido.pos;

    // cambiar la ganancia
    1.0 => sonido.gain;
    // version aleatoria
    // Std.rand2f(0.0, 1.0) => sonido.gain;

   // cambiar la velocidad de reproduccion
   // 1.0 es es velocidad normal, 0.5 es mitad de velocidad
   // signos negativos son en reversa
   0.7 => sonido.rate;
   // version aleatoria
   // Std.rand2f(-3.0, 3.0) => sonido.rate;

   // hacer que tiempo transcurra lo que dura el sonido
   sonido.length() => now;
   // version aleatoria
   // Std.rand2f(0.0, 1.0) * sonido.length() => now;
}