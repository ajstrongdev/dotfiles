#!/bin/bash
options=(
  "Lock Screen"
  "Exit Sway"
  "Shutdown"
)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Select an option:")
case "$chosen" in
  "Lock Screen")
	swaylock -C ~/.config/swaylock/rose-pine
    ;;
  "Exit Sway")
    swaymsg exit
    ;;
  "Shutdown")
	  shutdown now
	  ;;
esac
