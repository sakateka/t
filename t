#!/bin/bash

# Depends: https://github.com/soimort/translate-shell

if [[ "x$1" == "x-n" ]]; then
    text="$(xsel|tr -d ':.^$)(,/')"
    notify-send "$text" "$(trans :ru "$text" -no-ansi  \
        -show-original=y -show-original-phonetics=y \
        -show-translation=n -show-translation-phonetics=n \
        -show-prompt-message=n -show-languages=n -show-original-dictionary=n \
        -show-dictionary=n -show-alternatives=y -w 30 -indent 0 | \
        sed -n '1d;/^\s*$/{n;n};p'|tr '\n' ' '
    )"

else
    trans :ru "$1"
fi
