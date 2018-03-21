#!/bin/bash

# Depends: pip install translate

if [[ "x$1" == "x-n" ]]; then
    text="$(xsel)"
    notify-send "$text" "$(trans -brief :ru "$text")"
else
    trans :ru "$1"
fi
