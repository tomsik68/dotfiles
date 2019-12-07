#!/bin/sh

# I is for internet down
check_online() {
  # 1. check if some interface is up
  interfaces=$(ls /sys/class/net | grep -v '^lo$')
  someup="0"
  for intf in $interfaces; do
    if [[ "x$(cat /sys/class/net/$intf/operstate/)" == "xup" ]]; then
      someup="1"
      break
    fi
  done

  # if all interfaces are down do not expect to be online.
  if [ $someup -eq 0 ]; then
    echo "1"
  fi

  if ping -w 1 -c 1 1.1.1.1 2>/dev/null >/dev/null; then
    echo "1"
  else
    echo "I"
  fi
}

str="$(determine_online)"

echo $str | tr -d "1"
