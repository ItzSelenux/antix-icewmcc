#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Display window list menu?" "Hide Window List" "Show Window List")

if [ "$ANS" = "Hide Window List" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowWindowListMenu" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Show Window List" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowWindowListMenu" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0