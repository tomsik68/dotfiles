#!/bin/sh

# I is for internet down, G is for gateway unreachable
check_online() {
  # 1. check if some interface is up
  interfaces=$(ls /sys/class/net | grep -v '^lo$')
  someup="0"
  for intf in $interfaces; do
    if [[ "x$(cat /sys/class/net/$intf/operstate)" == "xup" ]]; then
      someup="1"
      break
    fi
  done

  # if all interfaces are down do not expect to be online.
  if [ $someup -eq 0 ]; then
    echo "1"
    return
  fi

  # check if gateway is reachable
  if ping -w 1 -c 1 _gateway 2>/dev/null >/dev/null; then
    echo "1"
  else
    echo "G"
  fi
}

# S is for system degraded, U is for user degraded
check_systemd() {
  system_status=$(systemctl is-system-running)
  user_status=$(systemctl --user is-system-running)
  case $system_status in
    "running" )
      echo "1"
      ;;
    "starting")
      echo "1"
      ;;
    *)
      echo "S"
    ;;
  esac
  case $user_status in
    "running" )
      echo "1"
      ;;
    "starting")
      echo "1"
      ;;
    *)
      echo "U"
    ;;
  esac
}

# B is for last backup older than 30 days
check_backup() {
  last_backup=$(cat ~/.lastbackup)
  now=$(date +%s)
  diff=$(echo "($now - $last_backup)/86400" | bc)
  if [ $diff -gt 30 ]; then
    echo "B"
  fi
}

str="$(check_online) $(check_systemd) $(check_backup)"

echo $str | tr -d "1 "
