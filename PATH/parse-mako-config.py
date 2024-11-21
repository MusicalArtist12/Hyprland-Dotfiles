#!/usr/bin/env python

# Julia Abdel-Monem - github.com/MusicalArtist12

import os
import re
import sys

if len(sys.argv) < 4:
    print("{} [theme.css] [source] [output-path]".format(sys.argv[0]))
    exit(-1)

colors = {}

f = open(sys.argv[1], "r")
for line in f:
    
    list = re.split(' ', line.strip())
    name = list[1]
    color = list[2].strip(';')

    colors['@' + name] = color

f.close()

os.system("touch {}".format(sys.argv[3]))  

source = open(sys.argv[2], "r")
output = open(sys.argv[3], "w")

for line in source:
    output_line = line.strip()
    for key in colors.keys(): 
        list = re.findall(key, line)
        
        if len(list) > 0:
            output_line: str = output_line.replace(key, colors[key])

    output.write(output_line + '\n')

source.close()
output.close()