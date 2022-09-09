// ej-06-notas-la.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar un arreglo de numeros con parte decimal
// @=> es el simbolo para ChucKear valores a un arreglo
[110.0, 220.0, 440.0, 880.0]@=> float notasLa[];

// declaramos un oscilador y conectamos a parlantes
SinOsc oscilador => dac;

// cambiamos volumen del oscilador
0.3 => oscilador.gain;

// iteramos y hacemos que suene cada nota
for (0 => int i; i < notasLa.cap(); i++) {
    // actualizamos la nota
    notasLa[i] => oscilador.freq;
    // hacemos que transcurra 1 segundo
    1 :: second => now;
}

