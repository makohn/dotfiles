#!/bin/sh

HOSTNAME=`echo $@ | sed s/.*@//`

set_bg () {
  osascript -e "tell application \"Terminal\" to set background color of window 1 to $1"
}

on_exit () {
  set_bg "{0, 0, 0, 50000}"
}
trap on_exit EXIT

set_bg "{0, 45000, 0, 50000}"


/usr/bin/ssh "$@"