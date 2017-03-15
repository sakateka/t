#!/bin/bash

# Depends: pip install translate

if [[ "x$1" == "x-n" ]]; then
    text="$(xsel)"
    notify-send "$text" "$(translate -f en -t ru "$text")"
else
    translate -f en -t ru "$1"
fi
