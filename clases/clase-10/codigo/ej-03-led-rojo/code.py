# ej-02-led-rojo
# por montoyamoraga, ipassala
# para AUDIV020 Diseno de instrumentos musicales digitales
# v0.0.1 octubre 2022
# hecho con Mu Editor 1.1.1
# https://learn.adafruit.com/circuitpython-made-easy-on-circuit-playground-express/red-led

# importar biblioteca para Adafruit CircuitPlayground
from adafruit_circuitplayground import cp

# importar biblioteca para tiempo
import time

# while es un bucle
# que se repite mientras la condicion
# sea verdadera
# y True es siempre verdad!
while True:
   
   # prende LED rojo
   cp.red_led = True   
   # espera 1.0 segundos
   time.sleep(1.0)

   # apaga LED rojo
   cp.red_led = False
   # espera 1.0 segundos
   time.sleep(1.0)



