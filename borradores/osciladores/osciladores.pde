// osciladores
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 agosto 2022
// hecho con Processing 4.0b9
// y biblioteca Processing Sound 2.3.1

import processing.sound.*;

SinOsc sinusoide;
 
void setup() {
  size(500, 500);
  background(255);
  
  sinusoide = new SinOsc(this);
  
  sinusoide.freq(440);
  sinusoide.amp(0.7);
  
  sinusoide.play();
}

void draw() {
}
