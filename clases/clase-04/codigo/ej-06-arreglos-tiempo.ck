// ej-06-arreglos-tiempo.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar un oscilador sinusoidal y conectarlo a parlantes
SinOsc oscilador => dac;

// declarar variable para volumen del oscilador
0.1 => float volumen;

// declarar un tamano para los arreglos
3 => int largo;

// declarar un arreglo de numeros decimales
float frecuencias[largo];

// declarar un arreglo de duraciones de tiempo
dur tiempos[largo];

// definir valores minimo y maximo de frecuencias
200 => float frecMin;
500 => float frecMax;

// definir valores minimo y maximo de tiempos
100 => float tiempoMin;
1000 => float tiempoMax;

// iterar en el largo de los arreglos
for (0 => int i; i < largo; i++) {
    
    // crear una frecuencia aleatoria
    Std.rand2f(frecMin, frecMax) => frecuencias[i];
    
    // crear una duracion aleatoria en milisegundos
    Std.rand2f(tiempoMin, tiempoMax) :: ms => tiempos[i]; 
}

// iterar
for (0 => int i; i < largo; i++) {
    // hacer que el oscilador cambie su frecuencia segun el arreglo
    frecuencias[i] => oscilador.freq;
    <<< frecuencias[i] >>>;
    
    // hacer que el oscilador tenga volumen
    volumen => oscilador.gain;
    
    // hacer que ChucK haga transcurrir tiempo segun el arreglo
    tiempos[i] => now;
    
    // hacer que el volumen sea 0
    0 => oscilador.gain;
    
    // hacer que ChucK haga transcurrir el mismo tiempo, ahora en silencio
    tiempos[i] => now;
}
