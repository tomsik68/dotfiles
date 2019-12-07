#!/bin/sh

acpi -b | \
  sed -e s'/Battery 0://g' \
      -e s'/Discharging//g' \
      -e s'/Charging/\^/g' \
      -e s'/,//g' \
      -e s'/remaining//g' \
      -e s'/^ \+//g' \
      -e s'/\+$//g' \
  |
  cut -d ":" -f 1,2
