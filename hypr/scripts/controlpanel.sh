#!/bin/bash

if [[ $(eww windows | grep "backdrop") = \** ]]; then
    eww close backdrop > /dev/null;
else
    eww open backdrop > /dev/null;
fi;

if [[ $(eww windows | grep "control-panel") = \** ]]; then
    eww close control-panel > /dev/null;
else
    eww open control-panel > /dev/null;
fi;