# ej-02-tiempo
# por montoyamoraga, ipassala
# para AUDIV020 Diseno de instrumentos musicales digitales
# v0.0.1 octubre 2022
# hecho con Mu Editor 1.1.1

# haz click en "Serial" para ver el resultado

# importar biblioteca para tiempo
import time

# crear variable x
# darle valor inicial 0
x = 0

# while es un bucle
# que se repite mientras la condicion
# sea verdadera
# y True es siempre verdad!
while True:

    # imprime x
    print(x)

    # actualiza el valor de x
    # nuevo valor = valor actual + 1
    x = x + 1

    # espera 1.0 segundos
    time.sleep(1.0)
