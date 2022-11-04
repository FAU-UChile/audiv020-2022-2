# clase-12

## integrando sensores con Pure Data

la placa Adafruit Circuit Playground se puede usar como un dispositivo MIDI capaz de enviar mensajes a otros dispositivos, como instrumentos musicales o computadores.

Pure Data es capaz de recibir mensajes MIDI, lo que significa que podemos crear instrumentos donde nuestra placa Adafruit actúa como sensor de gestualidad que envía información a nuestro computador con Pure Data, donde se genera el sonido.

## paso previo: agregando bibliotecas

para poder utilizar la interfaz MIDI es necesario integrar unas bibliotecas adicionales a nuestra placa.

para eso descomprime el archivo `lib.zip`, copia la carpeta `adafruit_midi` y pégala en la carpeta `lib` dentro de tu tarjeta de desarrollo.

## enviando notas MIDI desde la placa

en el siguiente ejemplo se inicializa la interfaz MIDI, luego se enciende una nota, y luego se apaga cada 1 segundo.

se utiliza la función `NoteOn(nota, vol)` para enviar un mensaje para encender una nota MIDI. Recibe una nota MIDI (un número de 0 a 127), y la velocidad asociado a esa nota (de 0 a 127), que interpretamos como volumen.

si una nota tiene velocidad igual a 0, la nota dejará de sonar.

```python
# ejemplo 1: ejemplo nota MIDI
# importar bibliotecas
import time
import usb_midi
import adafruit_midi
# importar biblioteca para encender nota
from adafruit_midi.note_on import NoteOn

# inicializa puerto midi
midi = adafruit_midi.MIDI(midi_out=usb_midi.ports[1], out_channel=0)

# bucle infinito
while True:
     # nota MIDI 46 = LA, velocidad 30 (de un máximo de 127)
    LA = NoteOn(46, 30)
    # enviar nota MIDI
    midi.send(LA)
    # dormir 1 segundo
    time.sleep(1.0)

    # apagar nota MIDI, haciendo velocidad 0
    LA_OFF = NoteOn(46, 0)
    # enviar nota MIDI
    midi.send(LA_OFF)
    time.sleep(1)
```

## recibiendo notas MIDI en Pure Data

para recibir notas MIDI en Pure Data necesitamos crear un bloque llamado `notein`.

el bloque nos entrega 3 elementos: el número de nota entrante, su velocidad, y el puerto MIDI por el que llegó la información.

<p float="left" align="middle">
<img src="./imagenes/recibiendo-notas.png">
</p>

## enviando mensajes MIDI Control Change

en esta clase ya vimos como enviar notas MIDI, y ahora veremos cómo enviar información de parámetros, mediante un mensaje llamado Control Change.

estos mensajes Control Change (CC) pueden ser usados para cambiar parámetros en nuestro instrumento, por ejemplo, para controlar efectos, ecualización, eco, envolventes, etc.

Control Change consta de 2 datos:

- número del parámetro (0 a 127)
- valor del parámetro (0 a 127)

en CircuitPython en nuestra placa, podemos usar la función `ControlChange(numero, valor)` para enviar los valores de nuestros sensores a Pure Data.

la única limitante es que solo podemos enviar un valor entre 0 y 127, por lo que necesitamos utilizar la función `mapear()` para transformar la escala de nuestro sensor a la escala entre 0 y 127.

en el siguiente ejemplo enviaremos la información del eje Z del acelerómetro a Pure Data utilizando la función `ControlChange(numero, valor)`

```python
# ejemplo 2: enviando datos de sensor con MIDI ControlChange
# importar bibliotecas
import time
import math
import usb_midi
import adafruit_midi
from adafruit_circuitplayground import cp
# importar función para encender nota
from adafruit_midi.control_change import ControlChange

# inicializar puerto midi
midi = adafruit_midi.MIDI(midi_out=usb_midi.ports[1], out_channel=0)

# funcion para convertir escala a1-a2 a escala b1-b2
def mapear(original, a1, a2, b1, b2):
    return min(b2, max(b1, math.ceil(b1 + ((original - a1) * (b2 - b1) / (a2 - a1)))))

# bucle infinito
while True:
    # leer aceleracion en 3 dimensiones
    x, y, z = cp.acceleration

    # mapear valor a la escala MIDI de 0 a 127
    z_en_escala_midi = mapear(z, -10, 10, 0, 127)

    # enviar mensaje Control Change
    # numero de controlador es 3, y su valor esta dado por acelerometro
    cc_z = ControlChange(3, z_en_escala_midi)
    # enviar mensaje MIDI Control Change
    midi.send(cc_z)
    # dormir por 0.1 segundos
    time.sleep(0.1)
```

## recibiendo mensajes MIDI Control change

para recibir la información de MIDI ControlChange en Pure Data necesitamos crear un bloque llamado `ctlin`.

el bloque nos entrega 3 elementos: el valor del parámetro, el número del parámetro y el puerto MIDI por el que llegó la información.

<p float="left" align="middle">
<img src="./imagenes/recibiendo-cc.png">
</p>

## proyecto del curso

hoy haremos lo siguiente:

- trabajaremos en un Google Doc compartido
- haremos lluvia de ideas sobre tipo de instrumento / gestualidad / dudas

próxima clase:

- trabajaremos en grupo
- el equipo docente resolverá dudas y ayudará con código
