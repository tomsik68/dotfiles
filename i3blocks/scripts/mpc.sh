#!/bin/sh

echo -n "♫ "
if [ $(mpc status | wc -l) -gt 1 ]; then
  title=$(mpc -f "%artist% - %title%" status | head -n1 | sed s':^ - ::')
  if [ $(echo $title | wc -c) -gt 1 ]; then
    echo $title
  else
    mpc status | head -n1
  fi
fi

case $BLOCK_BUTTON in
  [1])
    mpc toggle >/dev/null
  ;;
  [2-3])
    mpc clear
  ;;
esac
