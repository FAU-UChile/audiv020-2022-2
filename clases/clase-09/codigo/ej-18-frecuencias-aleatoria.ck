// ej-18-frecuencia-aleatoria.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 octubre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// crear oscilador y conectar a parlantes
SinOsc oscilador => dac;

// volumen encendido y apagado
0.1 => float volEncendido;
0.0 => float volApagado;

45 => int notaMin;
60 => int notaMax;

// probabilidad de nota o silencio
1.0 => float probNota;

// minimo y maximo de segundos
1.0 => float minSegundos;
10.0 => float maxSegundos;

// bucle infinito
while (true) {
    
    // crear nota MIDI aleatoria entre rango
    Math.random2(notaMin, notaMax) => int notaMIDI;
    
    // convertir a frecuencia
    Std.mtof(notaMIDI) => float frecuencia;
    
    // actualizar frecuencia oscilador
    frecuencia => oscilador.freq;
    
    // actualizar ganancia oscilador
    // si un decimal aleatorio entre 0 y 1
    // es menor que la probabilidad
    if (Math.randomf() < probNota) {
        // entonces darle ganancia al oscilador
        volEncendido =>  oscilador.gain;
    } 
    // en caso contrario, mutear el oscilador
    else {
        volApagado =>  oscilador.gain;
    }
    
    // duracion aleatoria
    Math.random2f(minSegundos, maxSegundos) :: second => now;
}

