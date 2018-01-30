#!/bin/bash
# http://magervalp.github.io/2018/01/30/defaults-write-double-slash.html

if [[ "$3" == "/" ]]; then
    TARGET=""
else
    TARGET="$3"
fi

defaults write "$TARGET/Library/Preferences/com.tyrell.nexussix" lifespan -int 4
