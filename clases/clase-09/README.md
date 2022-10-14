# clase-09

viernes 14 de octbure 2022, presencial

la clase pasada vimos:

- concepto de delay
- parámetros de delay
- reverb
- ejemplos de delay y reverb

esta clase veremos los conceptos de aleatoriedad y ruido digital

- aleatoriedad y pseudo-aleatoriedad
- estrategias para aleatoriedad
- composiciones con aleatoriedad
- ruido digital
- composiciones con ruido
- próxima clase

## aleatoriedad y pseudo-aleatoriedad

los computadores no son capaces de generar aleatoriedad.

## estrategias para aleatoriedad

lanzar dado:

- resultado es un número entero
- entre un mínimo y un máximo
- cada número tiene la misma probabilidad

lanzar dado cargado:

- los números posibles tienen distintas probabilidades.

número aleatorio normalizado:

- resultado es un número decimal entre 0 y 1.
- la probabilidad puede ser uniforme, normal, u otra.
- podemos trasladar el resultado a cualquier otro rango usando suma y multiplicación.

## composiciones con aleatoriedad

- John Cage - 4'33" https://www.youtube.com/watch?v=AWVUp12XPpU
- John Lennon, Yoko Ono - Radio Play https://www.youtube.com/watch?v=tSXYsQy3FW0

- Radiohead - The National Anthem https://www.youtube.com/watch?v=DcCSTs9UHhY
- Terry Riley - In C https://www.youtube.com/watch?v=DpYBhX0UH04

## instrumentos con aleatoriedad

- Buchla - 266E Source of Uncertainty https://buchla.com/product/266e/
- Macumbista - Benjolin https://www.youtube.com/watch?v=H-B82VLzu1E&t=65s
- Make Noise - WoggleBug https://makenoisemusic.com/modules/richter-wogglebug
- Mutable Instruments - Marbles https://mutable-instruments.net/modules/marbles/

## ruido digital

ruido blanco

ruido café

## composiciones con ruido

- The Beatles - I Want You https://www.youtube.com/watch?v=tAe2Q_LhY8g
- Evic Shen - live at Kaneko 5.13.22 https://www.youtube.com/watch?v=SrKZrbKObco
- clipping. - Full Performance (Live on KEXP) https://www.youtube.com/watch?v=1qd97k4Jr80
- Marc Ribot's Ceramic Dog - Your Turn https://www.youtube.com/watch?v=V9HhkU9AbeQ

## instrumentos con ruido

- ARP- 2600 https://www.korg.com/cl/products/synthesizers/arp2600_fs/
- Flower Electronics - Jealous Heart https://www.youtube.com/watch?v=6V_Enilh4wg
- Moog - DFAM https://www.moogmusic.com/products/dfam-drummer-another-mother
- Tristan Perich - Microtonal wall https://www.youtube.com/watch?v=MJSgaEaZytg

## implementaciones en ChucK

## implemenentaciones en Pure Data

el objeto random tiene un argumento de número entero. ese número entero define cuántas posibilidades tiene este número aleatorio. si el argumento es N, los números posibles de salida van entre 0 y N-1.

## próxima clase

con nuestras placas Adafruit Circuit Playground Express / Bluefruit!
