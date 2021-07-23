#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Show move status?" "Show Move Status" "Don't Show Move Status")

if [ "$ANS" = "Show Move Status" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "ShowMoveSizeStatus" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Don't Show Move Status" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "ShowMoveSizeStatus" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0