#!/bin/bash

playerctl --player=spotify status 2> /dev/null

if [ $? -ne 0 ]; then
  /snap/bin/spotify &
  for i in {0..20}
  do
    sleep 0.05
    playerctl --player=spotify status 2> /dev/null
    [ $? -eq 0 ] && break
  done
fi
i3-msg "[class=Spotify] focus"
