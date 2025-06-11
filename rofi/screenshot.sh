#!/bin/bash
options=(
  "Active Window (Copy)"
  "Screen (Copy)"
)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Take Screenshot")
case "$chosen" in
  "Active Window (Copy)")
    grimshot --wait 1 copy active
    ;;

  "Screen (Copy)")
    grimshot --wait 1 copy screen && notify-send "Screenshot taken"
    ;;
esac
