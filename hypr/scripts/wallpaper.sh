#!/bin/sh

WALLPAPER_DIR="${HOME}/Pictures/Wallpapers/"

wallpaper="$(find "$WALLPAPER_DIR" -type f | shuf -n 1)"
echo $wallpaper
hyprctl hyprpaper preload "$wallpaper"
hyprctl hyprpaper wallpaper ",$wallpaper"
