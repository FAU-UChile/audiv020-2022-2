// ej-07-notas-muchas.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar un arreglo de numeros con parte decimal
// @=> es el simbolo para ChucKear valores a un arreglo
float notas[128];

// definimos la primera nota MIDI de 8.18 Hz
8.18 => float notaBase;

// cada nota siguiente, se multiplica
// por la raiz doceava de dos
// equivalente a 2 elevado a 1/12
Math.pow(2, 1.0/12.0) => float multiplo;

// declaramos un oscilador y conectamos a parlantes
SinOsc oscilador => dac;

// cambiamos volumen del oscilador
0.2 => oscilador.gain;

// iteramos y construimos el arreglo de 128 notas
for (0 => int i; i < notas.cap(); i++) {
    // la nota en casilla i
    // es la nota base multiplicada por
    // raiz doceava de 2, elevada a i
    notaBase * Math.pow(multiplo, i) => notas[i];
    // imprimir en consola
    <<< notas[i] >>>;
}

// iterar sobre el arreglo de notas
for (0 => int i; i < notas.cap(); i++) {
    // cambiar frecuencia del oscilador
    notas[i] => oscilador.freq;
    // hacer que transcurra el tiempo
    0.1 :: second => now;
}



