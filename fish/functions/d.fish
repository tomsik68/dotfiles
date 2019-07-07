#!/usr/bin/fish

function d --description 'cd && clear && ls'
  cd $argv
  clear
  ls
end
