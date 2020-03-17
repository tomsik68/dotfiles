#!/bin/sh

intf=$BLOCK_INSTANCE

state=$(cat /sys/class/net/$intf/operstate)
if [ "x$state" == "xdown" ]; then
  exit 0
fi

ip_with_mask=$(ip -4 addr show $intf | grep "scope global" | xargs echo | cut -d " " -f 2)

# copy IP functionality
case $BLOCK_BUTTON in
  [1-3])
    echo $ip_with_mask | cut -d "/" -f 1 | xsel -b -i
  ;;
esac

echo $ip_with_mask
