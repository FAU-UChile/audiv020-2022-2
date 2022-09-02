// ej-07-info-teclado.ck
// por montoyamoraga
// para AUDIV020 Diseno de instrumentos musicales digitales
// v0.0.1 septiembre 2022
// hecho con miniAudicle v.1.4.1.1 (gidora)
// y ChucK 1.4.1.1 (numchucks) 64-bit
// basado y traducido desde
// https://chuck.cs.princeton.edu/doc/examples/hid/kb.ck

// Hid es un dispositivo de interfaz humana
// https://en.wikipedia.org/wiki/Human_interface_device
// ejemplos tipicos: raton, teclado
Hid dispositivo;
HidMsg mensaje;

// abran la ventanaaaaa// Window -> Device Browser -> Human Interface Devices
// para ver sus posibilidades, en mi computador tengo raton y teclado
// si su computador les pide permiso, acepten
// y luego cierren y vuelvan a abrir miniAudicle
0 => int indiceDispositivo;

// tratar de abrir el dispositivo en el indice
if (!dispositivo.openKeyboard(indiceDispositivo)) {
    // si falla, salir del programa
    me.exit();
}

// imprimir en consola el resultado
<<< "dispositivo: " + dispositivo.name() >>>;

// bucle infinito
while( true ) {
    // esperar hasta recibir info del dispositivo
    dispositivo => now;
    
    // mientras recibimos un mensaje
    while( dispositivo.recv(mensaje)) {
        // si se presiona una tecla
        if (mensaje.isButtonDown()) {
            <<< "tecla presionada",  mensaje.ascii>>>;
        }
        // si se suelta una tecla
        else if (mensaje.isButtonUp()) {
            <<< "tecla soltada",  mensaje.ascii>>>;
        }
    }
}
