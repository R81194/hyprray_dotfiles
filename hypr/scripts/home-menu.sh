#!/usr/bin/env bash

LOCKFILE="/tmp/home-menu.lock"

# Prevent multiple instances
if [ -f "$LOCKFILE" ]; then
  exit 0
fi

touch "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

choice=$(printf "  \n ⏻ " | \
  wofi --dmenu --hide-search --width 40 --height 50 --location 2 --yoffset 10)

case "$choice" in
  "  ") nm-connection-editor ;;
  " ⏻ ") wlogout ;;
esac
