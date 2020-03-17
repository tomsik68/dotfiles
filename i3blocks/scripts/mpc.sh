#!/bin/sh

if [ $(mpc status | wc -l) -gt 1 ]; then
  echo -n ">"
  mpc -f %title% status
fi

case $BLOCK_BUTTON in
  [1])
    mpc toggle >/dev/null
  ;;
  [2-3])
    mpc clear
  ;;
esac
