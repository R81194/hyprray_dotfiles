#!/usr/bin/env bash
export PATH=/usr/bin:/bin:/usr/local/bin:$PATH

WALLDIR="$HOME/Pictures/wallpapers"
CACHE1="$HOME/.cache/current_wall"
CACHE2="$HOME/.cache/current_wall_img"

mkdir -p "$HOME/.cache"

mapfile -t WALLS < <(find "$WALLDIR" -type f)
[ ${#WALLS[@]} -eq 0 ] && exit 1

if [ -f "$CACHE1" ]; then
    index=$(cat "$CACHE1")
else
    index=0
fi

index=$(( (index + 1) % ${#WALLS[@]} ))
echo "$index" > "$CACHE1"

swww img "${WALLS[$index]}" \
  --transition-type grow \
  --transition-duration 3 \
  --transition-fps 60

cp "${WALLS[$index]}" "$CACHE2"