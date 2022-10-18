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

Recursos oficiales:
    - [Web oficial de CircuitPython](https://circuitpython.org/ "CircuitPython")
    - [Placas de desarrollo soportadas](https://circuitpython.org/downloads "Placas")
    - [Introducción a CircuitPython por Adafruit](https://learn.adafruit.com/welcome-to-circuitpython/what-is-circuitpython "Introducción a CircuitPython")
    
## Mu Editor

CircuitPython permite escribir código en cualquier editor de texto.

Para hacerlo más amigable, en este curso usaremos el software *Mu Editor* para escribir nuestros programas.

![Mu Editor](./imagenes/mu-editor-2.png 'Mu Editor')

Recursos oficiales:
    - [Web oficial de Mu Editor](https://codewith.mu/ 'Descarga Mu Editor')

## Conectando nuestra placa por primera vez



## Introducción a programar en CircuitPython

En Python tenemos 3 entidades principales:

  - Variables
  - Funciones
  - Objetos

Explicaremos sus características y empezaremos a programar inmediatamente.

### Variables
    
Las variables son *cajoncitos de memoria* donde se pueden guardar cosas para luego usarlas. 

Puede ser un número, un texto, u objetos más complejos. 

El valor de estos cajoncitos puede cambiar, por eso se llaman "variables".

> Nota: Los nombres de las variables no pueden contener espacios, ni tampoco comenzar con un número.

```python
# Ejemplo 1: Definiendo variables
x = 5
y = "John"
mi_variable = 4.5

print(x)
print(y)
print(mi_variable)
```

```python
# Ejemplo 2: Sumando números
x = 5
y = 4.5
z = x + y
print(z)
```

```python
# Ejemplo 3: Concatenando texto
x = "Juan"
y = "Gonzáles"
z = x + " " + y
print(z)
```

### Funciones

Las funciones nos permiten ejecutar acciones. 

Python nos ofrece muchas funciones listas para usar. En los ejemplos anteriores ya usamos la función ```print()``` que permite mostrar datos en la consola.

Éstas reciben datos de entrada *inputs*, y entregan un resultado *output*. El resultado se puede guardar en una variable o hacer lo que quieras con él.

Tu también puedes crear tus propias funciones.

```python
# Ejemplo 4: Usando la función str() para convertir números a texto
x = "Temperatura: "
y = 27.2
z = str(y)

msg = x + z + "°C"
print(msg)
```

```python
# Ejemplo 5: Definiendo nuestra propia función y usándola
def imprimeTemperatura(temp):
    msg = "Temperatura: " + str(temp) + "°C"
    print(msg)

imprimeTemperatura(27.2)
imprimeTemperatura(26.9)
imprimeTemperatura(26.3)
```

### Objetos

Los objetos nos permiten agrupar variables y funciones para darles un sentido lógico.

Solo como ejemplo, Python podría tener un objeto llamado ```Perro``` que contiene las características y acciones que pueden hacer los perros. 

Si yo quisiera saber el nombre o la edad de mi perro yo podría acceder a estos datos de esta forma: ```Perro.nombre``` o ```Perro.edad```. O si quisiera hacer que mi perro ladre yo puedo escribir ```Perro.ladra()```.

El operador ```.``` permite interactuar con los objetos en Python.

MicroPython y Adafruit nos provee una biblioteca de objetos que nos permiten interactuar con los componentes de nuestra placa. En los siguientes ejemplos se muestra como encender o apagar un LED.

```python
# Ejemplo 7: Encendiendo el LED de la placa
from adafruit_circuitplayground import cp # importa biblioteca de Adafruit CircuitPlayground
cp.red_led = True
```

```python
# Ejemplo 8: Apagando el LED de la placa
from adafruit_circuitplayground import cp # importa biblioteca
cp.red_led = False
```

### Haciéndo que nuestro programa se ejecute por siempre

Hasta ahora todos nuestros programas se han ejecutado una sola vez. Es decir, el computador ha leído línea por línea de arriba hacia abajo, ejecutando las instrucciones y luego se deteniéndose.

Si queremos que nuestro programa se ejecute por un tiempo indefinido podemos usar un pequeño truco: Definir un bloque de código usando la notación ```while True```

```python
# Ejemplo 9: Usando "while True" para que nuestro programa no se detenga
while True:
    print("Estaré ")
    print("haciendo ")
    print("esto ")
    print("por ")
    print("siempre... ")
```

```python
# Ejemplo 10: Mostrando el número de ejecuciones en consola
x = 0
while True:
    x = x + 1
    print("Ejecución número:", x)

# ¿Qué pasa si dejas este programa corriendo durante mucho tiempo?
```

Notarás que estos códigos se ejecutan indefinidamente y muy rápido.

### Haciéndo que nuestro programa tome descansos

Existen algunas técnicas para controlar los tiempos de ejecución de nuestro código, una de las más simples es usar el objeto ```time``` y su función ```sleep(segundos)```, que permite ejecutar pausas en nuestro programa.

```python
# Ejemplo 11: Ejecutando pausas en nuestro programa
import time # importar biblioteca para tiempo

while True:
    print("Estaré haciendo esto cada 1 segundo.")
    time.sleep(1.0) # Dormimos 1.0 segundo (no se hace nada)
```

```python
# Ejemplo 12: Ejecutando pausas en nuestro programa
import time 
x = 0

while True:
    x = x + 1
    print("Ejecución número:", x)
    time.sleep(0.5) # Dormimos medio segundo 
```

### Prueba básica: Encendiendo y apagando un LED

Ya hemos revisado los conceptos básicos que nos permitirán crear nuestros primeros programas. 

Usualmente, la prueba más simple para probar que nuestro circuito está programándose correctamente consiste en encender y apagar un LED de forma indefinida.

¿Cómo podrías escribir un programa que encienda un LED durante un segundo y luego lo apague durante un segundo, y que esto suceda indefinidamente?

Todo lo que se necesita lo hemos visto en las secciones anteriores.

```python
# Ejemplo 13: Encendiendo y apagando un LED
from adafruit_circuitplayground import cp
import time 

while True:
    # prende LED rojo
    cp.red_led = True   
    # espera 1.0 segundos
    time.sleep(1.0)

    # apaga LED rojo
    cp.red_led = False
    # espera 1.0 segundos
    time.sleep(1.0)
```

### Ejercicios:

1. Modificar el tiempo de parpadeo, hacerlo más rápido o más lento.
2. Hacer que el tiempo de encendido sea más largo que el tiempo de apagado.
3. Hacer que el tiempo de encendido sea más corto que el tiempo de apagado.
4. ¿Cuál es el tiempo de parpadeo más rápido que puedes ejecutar? ¿Qué pasa si el tiempo de parpadeo es demasiado rápido?
5. Hacer que el LED parpadee 3 veces muy rápido y luego se apague 1 segundo.
6. Hacer que el LED parpadee 3 veces, luego 2 veces, luego 1 vez, con una pausa de tres segundos entre cada una de ellas.
7. Utiliza una variable para que el tiempo de encendido y apagado sean iguales y puedas cambiarlo fácilmente modificando una sola línea de código.
8.  Crea una función llamada ```LED_ON(n)``` que te permita encender el LED durante "n" segundos, y otra llamada ```LED_OFF(n)``` que permita apagar el LED durante "n" segundos.
9.  Utiliza las funciones recién creadas para generar el parpadeo.
