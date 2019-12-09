#!/bin/bash
# Automatically activate external monitors and configure i3 environnement

# Use a udev rule to automatically trigger this script
# /etc/udev/rules.d/98-monitor-hotplug.rules
# KERNEL=="card0", SUBSYSTEMS=="drm", ACTION=="change", RUN+="/path/to/workspace-init.sh"

LAPTOP_SCREEN="eDP1"
MONITORS=( $(xrandr | grep connected -w | cut -d ' ' -f 1 ) )
EXTERNAL_MONITORS=( ${MONITORS[@]/$LAPTOP_SCREEN/} )

for MONITOR in $EXTERNAL_MONITORS
do
  case $MONITOR in
    # Predefined configurations
    "DP1")
      # Home
      xrandr --output "$MONITOR"  --auto --primary --left-of "$LAPTOP_SCREEN"
      ;;
    "DP2")
      # work
      xrandr --output "$MONITOR"  --auto --primary --left-of "$LAPTOP_SCREEN"
      ;;
    *)
      # Default
      xrandr --output "$MONITOR"  --auto --primary --left-of "$LAPTOP_SCREEN"
      ;;
    esac
    notify-send "External screen connected" "$MONITOR activated."
done

if [ -z "$EXTERNAL_MONITORS" ]
then
  # All input disconected
  xrandr --auto
  notify-send "External screen disconnected" 
  MONITOR=$LAPTOP_SCREEN
fi

i3-msg "workspace number 1, move workspace to output $MONITOR"
i3-msg "workspace number 2, move workspace to output $MONITOR"
i3-msg "workspace number 3, move workspace to output $MONITOR"

# Adjust wallpaper & reload polybar
$HOME/.fehbg
$HOME/.config/polybar/launch.sh
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

exit 0

