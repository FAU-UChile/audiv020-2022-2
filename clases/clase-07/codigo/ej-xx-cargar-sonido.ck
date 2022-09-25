// ej-xx-cargar-sonido.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit
// ejemplo inspirado en y traducido de
// https://chuck.cs.princeton.edu/doc/examples/basic/sndbuf.ck

<<< me.dir() >>>;

"sonido-aplauso.wav" => string sonidoAplauso;
"sonido-silbido.wav" => string sonidoSilbido;

SndBuf sonido => dac;

me.dir() + sonidoSilbido => sonido.read;


while (true) {
    0 => sonido.pos;
    1.0 => sonido.gain;
    0.5 => sonido.rate;
    1 :: second => now;
}


