#!/usr/bin/env python

# Julia Abdel-Monem - github.com/MusicalArtist12

import signal
import os 

def sig_handler(sig, frame):
   
   if sig_handler.enabled == True: 
      sig_handler.enabled = False
      os.system("echo \'{\"alt\": \"disabled\", \"class\": \"disabled\"}' | jq --unbuffered --compact-output")
      os.system("dbus-send --dest=org.freedesktop.ScreenSaver --print-reply /org/freedesktop/ScreenSaver org.freedesktop.ScreenSaver.UnInhibit uint32:{} > /dev/null".format(sig_handler.pid))

   else: 
      sig_handler.enabled = True
      os.system("echo \'{\"alt\": \"enabled\", \"class\": \"enabled\"}' | jq --unbuffered --compact-output")
      sig_handler.pid = os.system("dbus-send --dest=org.freedesktop.ScreenSaver --print-reply /org/freedesktop/ScreenSaver org.freedesktop.ScreenSaver.Inhibit string:'waybar' string:'inhibitor' > /dev/null")


sig_handler.enabled = True
sig_handler.pid = 0;

signal.signal(signal.SIGUSR1, sig_handler)
os.system("echo \'{\"alt\": \"disabled\", \"class\": \"disabled\"}' | jq --unbuffered --compact-output")

while 1: 
   signal.pause()
