#!/bin/bash
options=(
  "Select Area (Copy)"
  "Active Window (Copy)"
  "Screen (Copy)"
)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Take Screenshot")
case "$chosen" in
   "Select Area (Copy)")
	   grimshot --wait 1 copy area
  	;;
  "Active Window (Copy)")
    grimshot --wait 1 copy active
    ;;

  "Screen (Copy)")
    grimshot --wait 1 copy screen && notify-send "Screenshot taken"
    ;;
esac
