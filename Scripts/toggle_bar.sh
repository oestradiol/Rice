#!/bin/sh

# Toggles bar on and off.
# You can call this script like this:
# toggle_bar auto|on|off|test_fullscreen

auto(){
    (xdotool search --onlyvisible --name "Eww - eww-bar")

    if [[ $? -eq 0 ]] 
    then
        off
    else
        on
    fi;
}

on(){
    bspc config top_padding 40
    bspc config top_monocle_padding 8
    for wid in `xdotool search --name "Eww - eww-bar"`; 
    do 
        xdotool windowmap --sync $wid
    done;
}

off(){
    bspc config top_padding 0
    bspc config top_monocle_padding 0
    for wid in `xdotool search --name "Eww - eww-bar"`; 
    do 
        xdotool windowunmap --sync $wid
    done;
}
 
test_fullscreen(){
    if [[ -z "$(bspc query -N -n focused.fullscreen)" ]]
    then
        on
    else
        off
    fi;
}

$1