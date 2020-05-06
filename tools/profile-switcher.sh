#!/bin/bash
# Toggle work profile 

BROWSER_PERSO="firefox.desktop"
BROWSER_PRO="google-chrome.desktop"

CURRENT=$(xdg-settings get default-web-browser)


if [[ "$1" != "toggle" ]]; then
  if [[ "$CURRENT" == "$BROWSER_PRO" ]]; then
    printf ""
  else
    printf ""
  fi
  exit 0
fi

case $CURRENT in
"$BROWSER_PRO")
  # Switch to perso
  feh --no-fehbg --bg-fill "$HOME/Pictures/space.jpg" &
  xdg-settings set default-web-browser $BROWSER_PERSO &
  ssh-add ~/.ssh/id_rsa_perso &
  notify-send "Personal profile activated" "Time to relax 🍺" &
  printf ""
  ;;
"$BROWSER_PERSO")
  # Switch to pro
  feh --no-fehbg --bg-fill "$HOME/Pictures/pulp.jpg" &
  xdg-settings set default-web-browser $BROWSER_PRO &
  notify-send "Work profile activated" "Let's get some shit done 🤘" &
  printf ""
  ;;
*)
  notify-send "Unsupported profile"
  printf ""
  exit 1
  ;;
esac


