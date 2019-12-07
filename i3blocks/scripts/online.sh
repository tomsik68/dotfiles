#!/bin/sh

if ! ping -w 1 -c 1 1.1.1.1 2>/dev/null >/dev/null; then
  echo "offline"
fi
