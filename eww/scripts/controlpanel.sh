#!/bin/bash

is_active() {
    FIRST_LETTER=`eww windows | grep "$1" | cut -c 1`;

    if [[ "$FIRST_LETTER" == "*" ]]; then
        return 0
    else
        return 1
    fi
}

if [[ $1 == "toggle" ]]; then
    if is_active "backdrop"; then
        eww close backdrop > /dev/null
    else
        eww open backdrop > /dev/null
    fi
    
    if is_active "control"; then
        eww close control-panel > /dev/null
    else
        eww open control-panel > /dev/null
    fi
elif [[ $1 == "open" ]]; then
    eww open backdrop > /dev/null
    eww open control-panel > /dev/null
elif [[ $1 == "close" ]]; then
    eww close control-panel > /dev/null
    eww close backdrop > /dev/null
else
    echo "Invalid option. Usage: controlpanel [open|close|toggle]"
    exit 1
fi