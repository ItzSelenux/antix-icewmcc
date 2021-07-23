#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Display mailbox status?"  "Hide Mail Status" "Show Mail Status")

if [ "$ANS" = "Hide Mail Status" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowMailboxStatus" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Show Mail Status" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowMailboxStatus" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0