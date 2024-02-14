#!/usr/bin/env sh

xdotool windowunmap --sync $(wmctrl -l | grep 'discord.com is sharing ' | tail -1 | cut -f1 -d' ')
