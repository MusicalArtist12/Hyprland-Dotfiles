#!/usr/bin/env python

# Julia Abdel-Monem - github.com/MusicalArtist12

import os
import time

WARNING_PERCENTAGE = 10

def check_battery():
    percentage = os.popen("cat /sys/class/power_supply/BAT1/capacity").read().strip()
    status = os.popen("cat /sys/class/power_supply/BAT1/status").read().strip();

    if int(percentage) <= WARNING_PERCENTAGE and status == "Discharging":
        check_battery.id = os.popen("notify-send -u critical \'󰂃 {}%\' -a battery-notify -r {} -p".format(percentage, check_battery.id)).read().strip()

check_battery.id = 0

while 1:
    check_battery()
    time.sleep(1)
