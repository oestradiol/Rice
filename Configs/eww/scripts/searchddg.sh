#!/bin/zsh

term=$(<$HOME/.config/eww/search)
firefox --new-tab --url "https://www.duckduckgo.com/?q=$term"
rm -rf $HOME/.config/eww/search