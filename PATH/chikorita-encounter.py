#! /usr/bin/env python

# Julia Abdel-Monem - github.com/MusicalArtist12


from random import random
import os
import sys

RATE = 4096

random = int(random() * RATE)

os.system("pokemon-colorscripts -n {r} chikorita --no-title".format(r = "-s" if random == 0 else ""))

