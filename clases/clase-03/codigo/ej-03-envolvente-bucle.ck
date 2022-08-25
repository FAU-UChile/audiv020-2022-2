// ej-02-envolvente
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 agosto 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar una instancia de oscilador sinusoidal
// darle nombre sinusoide
TriOsc sinusoide;

// declarar una instancia de envolvente ADSR
// darle nombre envolvente
ADSR envolvente;

// conectar salida de oscilador a la entrada de la envolvente
// a su vez, conectar salida de envolvente a entrada de dac
sinusoide => envolvente => dac;

while (true) {
    
    // frecuencia del oscilador
    // rango humano audible entre 20 y 20,000 Hz
    Std.rand2f(100, 600) => sinusoide.freq;
    
    // ganancia es volumen, entre 0.0 y 1.0
    0.3 => sinusoide.gain;
    
    // configurar envolvente ADSR
    // A = ataque, tiempo entre silencio y amplitud maxima
    // D = decay, tiempo entre amplitud maxima y sostenimiento
    // S = sustain, amplitud sostenida hasta que el sonido empieza a terminar
    // R = release, tiempo entre sostenimiento y fin del sonido
    // A, D y R son tiempos, S es amplitud entre 0.0 y 1.0
    
    Std.rand2f(0.1, 1.0) :: second => dur arribo;
    Std.rand2f(0.1, 1.0) :: second => dur decaimiento;
    0.5 => float sostenimiento;
    Std.rand2f(0.1, 1.0) :: second => dur relajacion;
    
    envolvente.set(arribo, decaimiento, sostenimiento, relajacion);
    
    envolvente.keyOn();
    
    arribo + decaimiento + (Std.rand2f(0.1, 1.0) :: second)=> dur duracionNota;
    
    duracionNota => now;
    
    envolvente.keyOff();
    
    envolvente.releaseTime() => now;
    
    // dejar que transcurran 2 segundos
    1 :: second => now;
}
