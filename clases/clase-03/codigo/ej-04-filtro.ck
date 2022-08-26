// ej-04-filtro.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 agosto 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar una instancia de ruido blanco
// darle nombre ruido
Noise ruido;

// declarar una instancia de envolvente ADSR
// darle nombre envolvente
ADSR envolvente;

// filtro pasa bajos
LPF pasabajos;

// conectar salida de ruido a la entrada de la envolvente
// a su vez, conectar salida de envolvente a entrada de dac
ruido => pasabajos => dac;

// definir frecuencia minima y maxima
50 => float frecMin;
1500 => float frecMax;

// definir frecuencia de corte actual
frecMin => float frecActual;

// definir valores para que la frecuencia cambie
// delta es cuanto cambia entre cada iteracion
0.1 => float frecDelta;
// direccion es hacia donde cambia
// 1.0 hace que aumente, -1.0 que disminuya
1.0 => float frecDeltaDireccion;


while (true) {
    
    // actualizar frecuencia de corte
    frecActual + frecDeltaDireccion * frecDelta  =>frecActual;
    
    // imprimir frecuencia actual en consola
    <<< frecActual >>>;
    
    // cambiar frecuencia de corte del filtro
    frecActual => pasabajos.freq;
    
    // dejar que transcurra tiempo
    0.5 :: ms => now;
    
    // si la frecuencia de corte es mayor que el maximo
    if (frecActual >= frecMax) {
        // cambiar la direccion para que disminuya
        -1.0 => frecDeltaDireccion;
    }
    
    // si la frecuencia de corte es menor que el minimo
    if (frecActual <= frecMin) {
        // cambiar de direccion para que aumente
        1.0 => frecDeltaDireccion;
    }
    
}
