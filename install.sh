#!/bin/bash
set -x
echo Running from $(pwd)

function bk_mv() {
    [ -e $HOME/$1 ] && mv $HOME/$1 $HOME/$1.bak
}

function bk_ln() {
    bk_mv $1
    ln -s $(pwd)/$2 $HOME/$1
}
ln -s vim nvim

bk_ln .tmux.conf tmux/tmux.conf
bk_ln .bashrc bash/bashrc
bk_ln .profile bash/profile
bk_ln .vim vim
bk_mv .vimrc
bk_ln .config/nvim nvim
bk_ln .config/bspwm bspwm
bk_ln .gitconfig git/gitconfig
[ -d ~/.emacs.d ] || mkdir ~/.emacs.d
bk_ln .emacs.d/init.el emacs.d/init.el
bk_ln .emacs.d/configuration.org emacs.d/configuration.org
