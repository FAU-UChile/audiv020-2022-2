// ej-09-acordes-midi.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar un arreglo de numeros enteros
// @=> es el simbolo para ChucKear valores a un arreglo
int notasMIDI[128];

// declaramos un arreglo de osciladores
SinOsc oscilador[3];

// iteramos sobre nuestros osciladores
for (0 => int i; i < oscilador.cap(); i++) {
    // conectamos cada oscilador a parlantes
    oscilador[i] => dac;
    // cambiamos volumen del oscilador
    0.2 => oscilador[i].gain;
}

// iteramos y construimos el arreglo de 128 notas
for (0 => int i; i < notasMIDI.cap(); i++) {
    // enumaremos las notas
    i => notasMIDI[i];
    // imprimir en consola
    <<< notasMIDI[i] >>>;
}

// creamos un arreglo de frecuencias a tocar
float frecuencias[3];

// definimos distancias entre notas de acorde mayor
[0, 4, 7] @=> int intervalos[];

// iterar sobre el arreglo de notas
for (0 => int i; i < notasMIDI.cap(); i++) {
    // iteramos sobre el arreglo de intervalos
    for (0 => int j; j < intervalos.cap(); j++) {
       // tomamos la nota base y sumamos el intervalo
       Std.mtof(notasMIDI[i] + intervalos[j]) => frecuencias[j];
       // actualizamos el oscilador correspondiente
       frecuencias[j] => oscilador[j].freq;
    }
    // hacer que transcurra el tiempo
    0.1 :: second => now;
}



