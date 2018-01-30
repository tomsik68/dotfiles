#!/bin/bash

if false && which powerline-daemon 2>&1 > /dev/null; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
    export PS1=""
else
    export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\]\w:\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"
fi
