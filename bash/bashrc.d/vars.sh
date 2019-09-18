#!/bin/bash
[ -d ~/.gem/ruby/ ] && export PATH=$PATH:~/.gem/ruby/2.6.0/bin
export PATH=~/bin/:$PATH
export PATH=$PATH:~/dotfiles/scripts
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.config/composer/vendor/bin/
export PATH=$PATH:~/.local/share/radare2/prefix/bin
export EDITOR=$(which nvim)
which g++ && export CXX=$(which g++)
export TERM=screen-256color
export BAT_THEME="Monokai Extended Bright"
