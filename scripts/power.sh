#!/usr/bin/bash

choice=$(printf "Shutdown\nReboot\nLogout\nSuspend" | rofi -show -dmenu -p Power)

case "$choice" in
 Shutdown)
  systemctl poweroff
  ;;
 Reboot)
  systemctl reboot
  ;;
 Logout)
  hyprctl dispatch exit
  ;;
 Suspend)
  systemctl suspend
  ;;
esac
