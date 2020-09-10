#!/bin/sh

unlocked_icon='🔓'
locked_icon=' '

if cat /proc/mounts | grep ecryptfs 2>&1 >/dev/null; then
  echo $unlocked_icon
else
  echo $locked_icon
fi

case $BLOCK_BUTTON in
  [1-3])
    ecryptfs-umount-private
  ;;
esac
