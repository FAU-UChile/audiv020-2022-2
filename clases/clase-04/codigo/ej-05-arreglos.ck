// ej-05-arreglos.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit

// declarar un arreglo de enteros
// entre los corchetes indicamos la cantidad
// y empieza vacio
int arreglo[3];

// despues podemos asignar valores
3 => arreglo[0];
4 + 7 => arreglo[1];
-2 => arreglo[2];

// y podemos iterar e imprimir en la consola
// con valores de indice entre 0 y tamano - 1
// el tamano se recupera con la funcion .cap()
// el bucle de abajo hace que i valga 0, luego 1, y finalmente 2
for (0 => int i; i < arreglo.cap(); i++) {
    <<< arreglo[i] >>>;
}

// crear arreglo y darle todos los valores
// @=> es el simbolo para ChucKear valores a un arreglo
[0.5, -1, 4] @=> float otroArreglo[];

// iterar e imprimir en pantalla:
for (0 => int i; i < otroArreglo.cap(); i++) {
    <<< otroArreglo[i] >>>;
}

// arreglo de caracteres
["a", ]@=> char palabra[];


