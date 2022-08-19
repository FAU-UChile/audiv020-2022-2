// ej-01-osciladores-random
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 agosto 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar una instancia de oscilador sinusoidal
// darle nombre sinusoide
SinOsc sinusoide;

// conectar oscilador al parlante
sinusoide => dac;

// frecuencia del oscilador
// rango humano audible entre 20 y 20,000 Hz
Std.rand2f(200, 1000) => sinusoide.freq;

// ganancia es volumen, entre 0.0 y 1.0
Std.rand2f(0.0, 0.3) => sinusoide.gain;

// dejar que transcurran 2 segundos
Std.rand2(10, 1000) :: ms => now;
