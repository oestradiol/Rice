#!/bin/sh

# Takes a screenshot of the whole screen.
# Screenshot is copied to clipboard and saved to
# ~/Pictures/Screenshots

mkdir -p ~/Pictures/Screenshots || true
date=`date +'%Y-%m-%d_%H:%M:%S'`
img=$HOME/Pictures/Screenshots/$date.png
flameshot screen -p $img && xclip -selection clipboard -target image/png -i $img && notify-send -u critical -t 3000 -i ~/Pictures/Screenshots/$date.png "Screenshot taken and copied to clipboard"