#!/bin/sh

# Used to resize and manage cava after it is opened

process_cava() {
    # Tries 20x
    counter=20
    while [[ $counter -gt 0 ]];
    do
        counter=$counter-1
        # Checks if wmctrl already finds the window
        if wmctrl -l | grep -q ' cava';
        then
            # Gets the window id
            wid=$(wmctrl -l | grep ' cava' | tail -1 | cut -f1 -d' ')
            
            # Resizes and fits it in the desktop
            wmctrl -i -r $wid -e 0,0,660,1920,420
            
            # Unmanages it on bspwm and then refreshes after
            xdotool set_window --overrideredirect 1 $wid
            xdotool windowunmap --sync $wid
            xdotool windowmap --sync $wid

            # Quits function
            return
        fi;
        sleep 0.1
    done;
}

process_cava