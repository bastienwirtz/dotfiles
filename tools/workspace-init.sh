#!/bin/bash
# Configure i3 environnement

# Adjust wallpaper & reload polybar
$HOME/.fehbg
$HOME/.config/polybar/launch.sh
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

exit 0

