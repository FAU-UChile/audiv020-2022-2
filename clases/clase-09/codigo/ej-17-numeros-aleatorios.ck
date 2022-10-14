// ej-17-numeros-aleatorios.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 octubre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit
// ejemplo inspirado en y traducido de
// https://chuck.cs.princeton.edu/doc/program/stdlib.html

// imprimir este string para separar en consola
<<< "===============" >>>;

// enteroAleatorio entre 0 y entero maximo
Math.random() => int entero;

// imprimir en consola
<<< "entero: " + entero>>>;

// enteroAleatorioRango entre 2 numeros
// las posibilidades incluyen tanto min como max
Math.random2(0,6) => int enteroRango;

// imprimir en consola
<<< "enteroRango: " + enteroRango>>>;

// decimal entre 0 y 1
Math.randomf() => float decimal;

// imprimir en consola
<<< "decimal: " + decimal >>>;

// decimal entre rango
// las posibilidades incluyen tanto min como max
Math.random2f(1.7 , 2.1) => float decimalRango;

// imprimir en consola
<<< "decimalRango: " + decimalRango >>>;