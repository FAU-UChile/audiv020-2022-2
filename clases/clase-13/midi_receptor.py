import adafruit_midi
import usb_midi
import time

from adafruit_midi.note_on          import NoteOn
from adafruit_midi.control_change   import ControlChange

midi_channel = 1
midi = adafruit_midi.MIDI(midi_in=usb_midi.ports[0], in_channel=midi_channel-1)

while True:
    msg = midi.receive()
    
    if isinstance(msg, NoteOn):
        print("")
        print("Llegó mensaje de nota MIDI")
        print("Nota:", msg.note)
        print("Velocidad:", msg.velocity) 
        
    if isinstance(msg, ControlChange):
        print("")
        print("Llegó mensaje de control MIDI")
        print("N°:", msg.control)
        print("Valor:", msg.value) 

    time.sleep(0.1)