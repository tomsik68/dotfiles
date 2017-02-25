#!/bin/bash
set -x
echo Running from $(pwd)

ln -s $(pwd)/vim/ $HOME/.vim
ln -s $(pwd)/tmux/tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/bash/bashrc $HOME/.bashrc
ln -s $(pwd)/bash/profile $HOME/.profile
