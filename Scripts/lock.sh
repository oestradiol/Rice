#!/bin/sh

# Pauses notifications and locks the screen. 
# Notifications get resumed when screen is unlocked.

pkill -SIGUSR1 dunst # pause

was_already_muted=false
if [[ `pactl get-sink-mute @DEFAULT_SINK@` == "Mute: no" ]]
    then
        pactl set-sink-mute @DEFAULT_SINK@ toggle > /dev/null
    else
        was_already_muted=true
fi;

mantablockscreen # requires https://github.com/reorr/mantablockscreen

if [[ $was_already_muted == false ]]
    then
        pactl set-sink-mute @DEFAULT_SINK@ toggle > /dev/null
fi;

pkill -SIGUSR2 dunst # resume