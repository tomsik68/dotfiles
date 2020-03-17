#!/bin/sh

devices=$(ls /sys/class/net/)
tempfile=/run/user/$(id -u)/netstats
interval=30

function restore_prev() {
  if [ ! -f $tempfile ]; then
    echo 0 > $tempfile
  fi

  cat $tempfile
}

newbytes=0
prevbytes=$(restore_prev)

for dev in $devices; do
  if [[ $dev != "lo" ]]; then
    newbytes=$(echo $newbytes "+" $(cat /sys/class/net/$dev/statistics/rx_bytes) | bc)
    newbytes=$(echo $newbytes "+" $(cat /sys/class/net/$dev/statistics/tx_bytes) | bc)
  fi
done

if [[ "x$BLOCK_BUTTON" == "x" ]]; then
  echo $newbytes > $tempfile
fi
echo "($newbytes - $prevbytes)/$interval" | bc | numfmt --padding="9" --to=si --suffix="B/s"
