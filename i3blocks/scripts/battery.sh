#!/bin/sh

status=$(acpi -b | \
  sed -e s'/Battery [0-9]://g' \
      -e s'/Discharging, //g' \
      -e s'/Not charging, //g' \
      -e s'/rate information unavailable//g' \
      -e s'/Full, //g' \
      -e s'/Charging, /\^/g' \
      -e s'/,//g' \
      -e s'/remaining//g' \
      -e s'/^ \+//g' \
      -e s'/\+$//g' \
      -e s'/100%\+$//g' \
  |
  cut -d ":" -f 1,2)
printf '%-10s\n' "$status"
