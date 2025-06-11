#!/bin/bash
options=(
  "Select Area (Copy)"
  "Active Window (Copy)"
  "Screen (Copy)"
)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Take Screenshot")
case "$chosen" in
   "Select Area (Copy)")
	   grimshot --wait 1 copy area && notify-send "Screenshot copied to clipboard!"
  	;;
  "Active Window (Copy)")
    grimshot --wait 1 copy active && notify-send "Screenshot copied to clipboard!"
    ;;

  "Screen (Copy)")
    grimshot --wait 1 copy screen && notify-send "Screenshot copied to clipboard!"
    ;;
esac
