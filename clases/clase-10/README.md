# clase-10

![Circuit Playground Express](./imagenes/circuit-playground-express.jpg 'Circuit Playground Express')

![Circuit Playground Bluefruit](./imagenes/circuit-playground-bluefruit.jpg 'Circuit Playground Bluefruit')

[Documentación oficial de Adafruit para el placa Circuit Playground Express](https://learn.adafruit.com/adafruit-circuit-playground-express "Circuit Playground Express")

[Documentación oficial de Adafruit para el placa Circuit Playground Bluefruit](https://learn.adafruit.com/adafruit-circuit-playground-bluefruit "Circuit Playground Bluefruit")

[El primer "bug"](https://en.wikipedia.org/wiki/Software_bug 'El primer "bug"')

## Tarjeta Circuit Playground

Características generales:

- 1 x puerto USB para programación y debugging
- 8 x Pines digitales de entrada o salida (Digital = encendidos o apagados)

- El puerto USB puede actuar como:
    - Puerto serial (para enviar o recibir mensajes)
    - Teclado, mouse, o joystick
    - ¡Interfaz MIDI! 

- Entradas:
    - 1 x Sensor de movimiento (Acelerómetro de tres ejes)
    - 1 x Sensor de temperatura (Termistor)
    - 1 x Sensor de luz (Fototransistor)
    - 1 x Sensor de sonido (Micrófono)
    - 2 x Pulsadores (Botones A y B)
    - 1 x Interruptor deslizante
    - 1 x Botón de RESET
- Salidas:
    - 1 x LED verde de encendido (ON)
    - 1 x LED rojo de uso genereal (D13)
    - 10 x mini NeoPixels (LEDs RGB que pueden mostrarcualquier color de forma independiente)
    - 1 x Mini parlante

## CircuitPython

CircuitPython es un lenguaje de programación *open source* diseñado específicamente para programar microcontroladores (computadores pequeños). 

Es una versión más acotada del lenguaje de programación Python.

Contiene un conjunto de librerías que permiten programar más de 300 placas de desarrollo. Este número sigue creciendo.

- Recursos oficiales:
    - [Web oficial de CircuitPython](https://circuitpython.org/ "CircuitPython")
    - [Placas de desarrollo soportadas](https://circuitpython.org/downloads "Placas")
    - [Introducción a CircuitPython por Adafruit](https://learn.adafruit.com/welcome-to-circuitpython/what-is-circuitpython "Introducción a CircuitPython")
    
### Mu Editor

CircuitPython permite escribir el código en cualquier editor de texto.
Para hacerlo más amigable, en este curso usaremos el software Mu Editor para escribir nuestros programas.

![Mu Editor](./imagenes/mu-editor-2.png 'Mu Editor')

- Recursos oficiales:
    - [Web oficial de Mu Editor](https://codewith.mu/ 'Descarga Mu Editor').

### Introducción MUY SIMPLIFICADA para programar en CircuitPython

En Python tenemos 3 entidades principales:

    - Variables
    - Funciones
    - Objetos

### Variables
    
Las variables son *cajoncitos de memoria* donde se pueden guardar cosas para luego usarlas. Puede ser un número, un texto, u objetos más complejos. El valor de estos cajoncitos puede cambiar, por eso se llaman "variables".

Los nombres de las variables no pueden contener espacios, ni tampoco comenzar con un número.

```python
x = 5
y = "John"
mi_variable = 4.5
print(x)
print(y)
print(mi_variable)
```

```python
x = 5
y = 4.5
z = x + y
print(z)
```

```python
x = "Juan"
y = "Gonzáles"
z = x + " " + y
print(z)
```

### Funciones

Las funciones nos permiten ejecutar acciones. 

Como en matemáticas, éstas reciben datos de entrada *inputs*, y entregan un resultado *output*. 

Este resultado se puede guardar en una variable o hacer lo que quieras con él.

Python nos ofrece muchas funciones listas para usar. En los ejemplos anteriores ya usamos la función ```print()```

Tu también puedes crear tus propias funciones.

```python
x = "Juan"
y = "Gonzáles"
z = x + " " + y
print(z)
```