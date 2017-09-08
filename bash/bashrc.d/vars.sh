#!/bin/bash
[ -d ~/.gem/ruby/ ] && export PATH=$PATH:~/.gem/ruby/2.4.0/bin
export PATH=$PATH:~/dotfiles/scripts
export EDITOR=$(which nvim)
which g++ && export CXX=$(which g++)
export TERM=screen-256color