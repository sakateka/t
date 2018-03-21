#!/bin/bash

# Depends: pip install translate

if [[ "x$1" == "x-n" ]]; then
    text="$(xsel)"
    notify-send "$text" "$(trans :ru "$text" -no-ansi  \
        -show-original=n -show-original-phonetics=n \
        -show-translation=n -show-translation-phonetics=n \
        -show-prompt-message=n -show-languages=n -show-original-dictionary=n \
        -show-dictionary=n -show-alternatives=y -w 30 -indent 0 | \
        tail -n -1
    )"

else
    trans :ru "$1"
fi
