// osciladores
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 agosto 2022
// hecho con Processing 4.0b9
// y biblioteca Processing Sound 2.3.1

// importar biblioteca Processing Sound
import processing.sound.*;

// declarar variable sinusoide de tipo SinOsc
SinOsc sinusoide;
 
// setup() ocurre una vez al principio
void setup() {
  // lienzo de 800 px ancho y 500 px altura
  size(800, 500);
  
  // fondo blanco
  background(255);
  
  // constructor de oscilador sinusoidal
  sinusoide = new SinOsc(this);
  
  
  // asignar frecuencia de 440 Hz
  // rango humano entre 20 y 20,000 Hz
  sinusoide.freq(440);
  
  // asignar amplitud de 0.7
  // rango entre 0.0 y 1.0
  sinusoide.amp(0.7);
  
  // iniciar funcionamiento de sinusoide
  sinusoide.play();
}

// draw() ocurre despues de setup(), en bucle
void draw() {
}
