#!/bin/sh

grep "Dirty:" /proc/meminfo | column -H 1,3 -t | numfmt --from-unit=1000 --to=si --padding=7 --suffix=B
