#!/usr/bin/fish
alias ..='d ..'
alias :E='vim +:E'
alias :e='vim'
alias E='vim +:E'
alias F='vim (fzf)'
alias G='vim +:FuzzyGrep'
alias ZQ='exit'
alias ZZ='exit'
alias b='bat'
alias bd='date +%d%m%Y'
alias c='clear && ls'
alias caly='cal -Ym'
alias diff='diff --color=auto'
alias e='vim'
alias g='git'
alias gaf='g a (fzf)'
alias gr='gitresolve'
alias grep='grep --color=auto'
alias i3lock='i3lock -c 000000'
alias l='ls'
alias less='bat'
alias lesla='ls -hla | less'
alias ls='exa'
alias lsg='exa | grep'
alias m='make'
alias make='make -j8'
alias minecraft='java -jar ~/bin/Minecraft.jar'
alias mle='m 2>&1 | less'
alias pu='phpunit'
alias pvc='pavucontrol-qt'
alias rmr='rm -rf'
alias s='sekt'
alias scan='scanimage -d "hpaio:/usb/Deskjet_F2400_series?serial=CN98K1236K05BS" -b --batch-prompt'
alias sl='ls'
alias ta='tmux -2 attach'
alias tm='tmux -2'
alias tracker='/opt/tracker/tracker.sh'
alias tt='tmux -2'
alias xsel='xsel -b'
alias reshacker='wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Resource\ Hacker/ResourceHacker.exe'

which nvim >/dev/null && alias vim='nvim'
