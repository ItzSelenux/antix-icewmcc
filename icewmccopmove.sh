#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Opaque window move?" "Opaque Move" "Transparent Move")

if [ "$ANS" = "Opaque Move" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "OpaqueMove" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Transparent Move" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "OpaqueMove" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0