#!/bin/sh

busy="wr $(grep Dirty /proc/meminfo | sed -e 's/Dirty:[^0-9]*\([0-9]\+\)[^0-9]*/\1/g' | numfmt --from-unit=1024 --to=iec-i)"

bdcount=$(ls /sys/block | wc -l)

if [ $bdcount -lt 3 ]; then
  busy=""
fi
