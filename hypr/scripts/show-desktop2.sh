#!/bin/bash

SPECIAL="desktop_hide"

# Check if special workspace is active
ACTIVE=$(hyprctl activeworkspace -j | jq -r '.name')

if [[ "$ACTIVE" == "special:$SPECIAL" ]]; then
    # Restore windows
    hyprctl dispatch togglespecialworkspace "$SPECIAL"
else
    # Move all windows to special workspace
    hyprctl dispatch movetoworkspace "special:$SPECIAL"
    hyprctl dispatch togglespecialworkspace "$SPECIAL"
fi
