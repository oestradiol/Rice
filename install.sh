#!/usr/bin/env sh

# Some directory names
script_dir=$( cd -- $( dirname -- ${BASH_SOURCE[0]} ) &> /dev/null && pwd )
old=$script_dir/Old_Rice

create_home_dir_tree()
{
    mkdir -p $1/.config || true
    mkdir -p $1/.cache || true
    mkdir -p $1/.local/share/fonts || true
}

create_dir_tree()
{
    mkdir -p $1/Assets || true
    mkdir -p $1/Scripts || true
    mkdir -p $1/Configs || true
    mkdir -p $1/Fonts || true
}

create_backup()
{
    create_dir_tree $old
    echo "Done"

    echo -n "Backing up current configs... "
    for file in `ls $script_dir/Configs/`;
    do 
        mv $HOME/.config/$file $old/Configs/$file 2> /dev/null
    done
    mv $HOME/.bscripts $old/Scripts 2> /dev/null
    mv $HOME/.config/rice_assets $old/Assets 2> /dev/null
    mkdir -p $script_dir/Fonts 2> /dev/null
    cp $HOME/.local/share/fonts/* $script_dir/Fonts 2> /dev/null
    mv $HOME/.local/share/fonts $old/Fonts 2> /dev/null
    echo "Done"
    echo "You can find your backups at $old/"
}

echo -n "Preparing stuff... "
create_home_dir_tree $HOME 2> /dev/null
echo "Done"

echo -n "Creating backup directory tree... "
if [[ -d "$old" ]]
then
    echo ""
    echo "WARNING: There seems to already be a backup at '$old'"
    echo -n "Do you wanna overwrite it (y/N)? "
    read input
    if [[ "$input" == "y" ]] || [[ "$input" == "Y" ]]
        then
            rm -rf "$old"
            echo -n "Okay! Redoing directory tree... "
            create_backup
    else
        echo "Delete $old manually before installing."
        echo "Installation aborted"
        exit
    fi;
else
    create_backup
fi;


echo -n "Applying rice... "
for file in `ls $script_dir/Configs/`;
do 
    ln -s -f $script_dir/Configs/$file $HOME/.config/
done
ln -s -f -T $script_dir/Assets $HOME/.config/rice_assets
ln -s -f -T $script_dir/Fonts $HOME/.local/share/fonts
ln -s -f -T $script_dir/Scripts $HOME/.bscripts

# Zsh
if [ -e $HOME/.zshrc ]; then
  mv -f $HOME/.zshrc $script_dir/Other/.zshrc
fi
ln -s -f $script_dir/Other/.zshrc $HOME/

# Profile picture
if [ -e $HOME/.face ]; then
  mv -f $HOME/.face $script_dir/Other/.face
fi
ln -s -f $script_dir/Other/.face $HOME/

echo "Done"

echo -n "Changing script permissions... "
chmod +x ~/.bscripts/*
chmod +x ~/.config/bspwm/autostart
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/bspwm/quit
chmod +x ~/.config/eww/scripts/*
echo "Done"

echo "Install finished!"
echo "There's no need to run this again. To update it, just run git pull."
echo "Enjoy my rice! ~<3"
hyfetch --ascii ~/.config/neofetch/uwufetch
