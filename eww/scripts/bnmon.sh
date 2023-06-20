#!/bin/bash

# BRIGHTNESS MONITOR SCRIPT

brightness_path="/sys/class/backlight/intel_backlight/brightness" 

current_brightness(){
    echo $(brightnessctl -d intel_backlight | grep "Current" | cut -d "(" -f 2 | cut -d "%" -f 1)
}

eww update BRIGHTNESS=$(current_brightness);

inotifywait -m -e modify "$brightness_path" | 
while read -r event filename; do
    echo $(current_brightness)
done;