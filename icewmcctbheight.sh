#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Use a double-height taskbar?" "Single-Height Taskbar" "Double-Height Taskbar")

if [ "$ANS" = "Single-Height Taskbar" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarDoubleHeight" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Double-Height Taskbar" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarDoubleHeight" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0