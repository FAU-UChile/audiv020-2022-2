from adafruit_circuitplayground import cp
import time

period = 1 # 1 segundo
time_now = 0

cp.red_led = False

while True:
    if time.monotonic() >= time_now + period:
        time_now = time_now + period
        cp.red_led = not cp.red_led