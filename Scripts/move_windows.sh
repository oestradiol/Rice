#!/bin/sh

# Glyphs
selected=""
wp=""
left=""
right=""

# Variables
total=`xdotool get_num_desktops`
current=`xdotool get_desktop`
duration=1000
font_size=90
topic="workspace"
separator_size="+0"
space_size="+0"

bsmove() {
	bspc node -d ^$(( target + 1 )) --follow || bselect
}

bselect()
{
    bspc desktop -f ^$(( target + 1 ))    
}

case $1 in
    jump)
        target=$2
        bselect
        ;;
    select)
        target=$(( current + $2 ))
        [[ $target -eq $(( -1 )) ]] && target=$(( total - 1 ))    
        [[ $target -eq $(( total )) ]] && target=0
        bselect
        ;;
    move)
        currwin=`xdotool getwindowfocus`
        target=$(( current + $2 ))    
        [[ $target -eq $(( -1 )) ]] && target=$(( total - 1 ))        
        [[ $target -eq $(( total )) ]] && target=0
        bsmove  
        ;;
esac;