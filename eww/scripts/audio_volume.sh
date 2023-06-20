#!/bin/bash

get_volume(){
    echo `amixer get Master | grep "Front Left:" | cut -d "[" -f 2 | cut -d "%" -f 1`; 
}

eww update AUDIO=$(get_volume)

while read -r _; do 
    echo `get_volume`; 
done < <(pactl subscribe | grep --line-buffered "sink")