#!/bin/sh

if [ $(mpc status | wc -l) -gt 1 ]; then
  echo -n ">"
  mpc status | head -n1
fi
