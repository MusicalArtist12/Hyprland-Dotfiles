#!/usr/bin/env python

# Julia Abdel-Monem - github.com/MusicalArtist12

import signal
import os 

def usr1_handler(sig, frame):
    volume = os.popen("pamixer --get-volume").read().strip()
    output = os.popen("pamixer --get-volume-human").read().strip()
    urgency = "critical" if output == "muted" else "normal" if int(volume) > 50 else "low" # this changes various colors as defined in the mako config
 
    usr1_handler.id = os.popen("notify-send -u {} {} -h int:value:{} -a volume-notify -r {} -p".format(urgency, output, volume, usr1_handler.id)).read().strip()

def usr2_handler(sig, frame):
    # round to the nearest 10 - since thats the increment as defined in /etc/acpi/handler.sh
    brightness = int(os.popen("xbacklight -get").read().strip())
    urgency = "normal" if int(brightness) > 50 else "low" # this changes the color of the text for the mako config

    usr2_handler.id = os.popen("notify-send -u {} {}% -h int:value:{} -a brightness-notify -r {} -p".format(urgency, brightness, brightness, usr2_handler.id)).read().strip()

usr2_handler.id = 0
usr1_handler.id = 0

signal.signal(signal.SIGUSR1, usr1_handler)

# in /etc/acpi/handler.sh
# pkill -USR2 -u julia -f "media-notify.py"
signal.signal(signal.SIGUSR2, usr2_handler)

while 1: 
   signal.pause()
