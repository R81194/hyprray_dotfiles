#!/bin/bash

SPECIAL="desktop"

current_ws=$(hyprctl activeworkspace -j | jq -r '.id')

count=$(hyprctl clients -j | jq --arg sp "special: $SPECIAL" '[.[] | select(.workspace.name == $sp)] | length')

if [ "$count" -gt 0 ]; then
    hyprctl dispacth movetoworkspacesilent "$current_ws"
else
    hyprctl dispacth movetoworkspacesilent "$SPECIAL"
fi