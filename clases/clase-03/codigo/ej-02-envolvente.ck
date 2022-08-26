// ej-02-envolvente.ck
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

// frecuencia del oscilador
// rango humano audible entre 20 y 20,000 Hz
Std.rand2f(100, 600) => sinusoide.freq;

// ganancia es volumen, entre 0.0 y 1.0
0.3 => sinusoide.gain;

// configurar envolvente ADSR
// A = ataque, tiempo entre silencio y amplitud máxima
// D = decay, tiempo entre amplitud máxima y sostenimiento
// S = sustain, amplitud sostenida hasta que el sonido empieza a terminar
// R = release, tiempo entre sostenimiento y fin del sonido
// A, D y R son tiempos, S es amplitud entre 0.0 y 1.0
Std.rand2f(0.1, 1.0) :: second => dur arribo;
Std.rand2f(0.1, 1.0) :: second => dur decaimiento;
Std.rand2f(0.1, 1.0) => float sostenimiento;
Std.rand2f(0.1, 1.0) :: second => dur relajacion;

// definir los parametros de la envolvente
envolvente.set(arribo, decaimiento, sostenimiento, relajacion);

// evento de tocar tecla, empezar envolvente,
// que pase de silencio a amplitud 1.0 en el tiempo A
// y luego que decaiga a amplitud S en tiempo D
// y que se quede ahi
envolvente.keyOn();

// crear un tiempo tiempo que sea igual a A + D + tiempo aleatorio de sostener
arribo + decaimiento + (Std.rand2f(0.1, 1.0) :: second)=> dur duracionNota;

// hacer que transcurra ese tiempo para que ocurra el sonido
duracionNota => now;

// evento de soltar tecla
// para que envolvente vaya de amplitud S a silencio
// y que esto ocurra en tiempo R
envolvente.keyOff();

// leer tiempo R de envolvente, y hacer que transcurra ese tiempo
envolvente.releaseTime() => now;

// dejar que transcurran 2 segundos
2 :: second => now;
