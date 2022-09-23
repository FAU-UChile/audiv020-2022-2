// ej-10-entrada-mic.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit
// ejemplo inspirado en y traducido de
// https://chuck.cs.princeton.edu/doc/examples/analysis/fft.ck

// declarar microfono con adc
// adc = analog to digital conversion
// conectarlo a ganancia
// luego conectar a FFT para analisis de frecuencia
// y luego conectarlo a agujero negro
// siempre debemos conectar adc a alguna salida
// si conectamos a parlantes habría retroalimentación
// asi que para evitar eso, usamos blackhole,
// donde podemos enviar audio y hacer que transcurra
// pero que se pierda
adc => Gain ganancia => FFT fft => blackhole;

// recuperar frecuencia de muestreo
second / samp => float srate;

// definir parametros de FFT
8 => fft.size;

while (true) {
    
 // hacer que transcurra el tiempo
 100 :: ms => now;
}

