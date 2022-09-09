// ej-07-notas-midi.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar un arreglo de numeros enteros
// @=> es el simbolo para ChucKear valores a un arreglo
int notasMIDI[128];

// declaramos un oscilador y conectamos a parlantes
SinOsc oscilador => dac;

// cambiamos volumen del oscilador
0.2 => oscilador.gain;

// iteramos y construimos el arreglo de 128 notas
for (0 => int i; i < notasMIDI.cap(); i++) {
    // enumaremos las notas
    i => notasMIDI[i];
    // imprimir en consola
    <<< notasMIDI[i] >>>;
}

// iterar sobre el arreglo de notas
for (0 => int i; i < notasMIDI.cap(); i++) {
    // calcular frecuencia a partir de nota MIDI
    Std.mtof(notasMIDI[i]) => float frecuencia;
    // cambiar frecuencia del oscilador
   frecuencia => oscilador.freq;
    // hacer que transcurra el tiempo
    0.1 :: second => now;
}



