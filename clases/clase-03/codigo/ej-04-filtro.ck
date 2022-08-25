// ej-04-filtro
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 agosto 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar una instancia de oscilador sinusoidal
// darle nombre sinusoide
Noise sinusoide;

// declarar una instancia de envolvente ADSR
// darle nombre envolvente
ADSR envolvente;

// filtro pasa bajos
LPF pasabajos;

// conectar salida de oscilador a la entrada de la envolvente
// a su vez, conectar salida de envolvente a entrada de dac
sinusoide => pasabajos => dac;

50 => float frecMin;
1500 => float frecMax;
0.1 => float frecDelta;
1.0 => float frecDeltaDireccion;
frecMin => float frecActual;

while (true) {
    
    // actualizar frecuencia de corte
    frecActual + frecDeltaDireccion * frecDelta  =>frecActual;
    
    if (frecActual >= frecMax) {
        -1.0 => frecDeltaDireccion;
    }
    
    if (frecActual <= frecMin) {
        1.0 => frecDeltaDireccion;
    }
    
    <<< frecActual >>>;

    // cambiar frecuencia de corte del filtro
    frecActual => pasabajos.freq;
    
    // dejar que transcurran 2 segundos
    0.5 :: ms => now;
}
