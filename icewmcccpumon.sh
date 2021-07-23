#!/bin/bash

ANS=$(yad  --width 100 --height 200 --title "IceWM Config" --list --separator="" --column="" --text "Display CPU monitor?"  "Hide Monitor" "Show Monitor")

if [ "$ANS" = "Hide Monitor" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowCPUStatus" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Show Monitor" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowCPUStatus" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0