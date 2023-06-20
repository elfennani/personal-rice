#!/bin/bash

if [[ "$(eww windows | grep topbar | cut -c 1)" == "*" ]]; then
    eww close topbar;
else
    eww open topbar;
fi;

