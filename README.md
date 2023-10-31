# My dotfiles
## An updated, revised and personalised version of two other rices I like.
### The rices in question are [dots-2.0](https://github.com/ikz87/dots-2.0) from cutie ikz87 and [Emily and Katie's dotfiles](https://github.com/egirldevs/dotfiles). 

1- The profile picture shown in the lockscreen can be changed by putting the desired image in `~/.face`.
2- If you wanna use the neofetch like I did, just add this to your .bashrc, .zshrc or whatever: `alias neofetch='hyfetch --ascii ~/Ricing/Configs/neofetch/uwufetch'`. You can also change the ASCII in that file if you want.

Please note that this rice was made for a single 1920x1080 monitor setup, If you have anything different than that you *might* have to tweak a thing or two on your own. Don't think you should come across much tho, hopefully. 

## Dependency list:
### AUR packages
**Disclaimer:** I did not test this on another machine after I finished it on mine. There's a strong possibility that I forgot one or two dependencies. If you come across this and find something missing, please contact me so I update it here.

Just run this for this section (assuming you use yay):
```
yay -Sy bspwm cava colorpicker dunst eww flameshot hyfetch kitty komorebi lxappearance mantablockscreen picom playerctl rofi rofi-emoji rofi-greenclip rose-pine-gtk-theme sox sxhkd ttf-cousine-nerd ttf-work-sans ttf-fantasque-nerd ttc-iosevka-curly ttf-cascadia-code-nerd wmctrl xclip xdotool --needed
```
If you're not using arch, this is the dependency list, install in wathever way you want:
- bspwm - Window manager
- cava-git - For the desktop audio visualiser
- colorpicker - Self-explanatory name
- dunst - Notifications
- eww-git - Topbar
- flameshot - Screenshotting tool
- hyfetch - Colored LGBT+ neofetch
- kitty - Terminal
- komorebi - Video background, can be substituted for feh if you don't want that, can be quite heavy 
- lxappearance - Theming
- rose-pine-gtk-theme - Theming
- mantablockscreen - Lock screen
- picom - Compositor
<br>**Obs.:** There is a cool picom fork called 'picom-ftlabs'. It is what I am using, so please tell me if something breaks with the default one.
- playerctl - Media controller
- rofi - Menus
- rofi-emoji - Emoji picker menu
- rofi-greenclip - Clipboard managing menu
- sox - Sound effects
- sxhkd - Keyboard shortcuts
- ttf-cousine-nerd - Used on eww bar
- ttf-work-sans - Also used on eww bar
- ttf-fantasque-nerd - Personal favourite Nerd font so I used it a lot here
- ttc-iosevka-curly - Used on the rofi menus
- ttf-cascadia-code-nerd - Used on a few icons in the power options menu
- wmctrl - For adding script controlling of the WM
- xclip - For saving things to clipboard, mainly colour picker and screenshots
- xdotool - For adding script controlling of the X Window System, used in a few scripts

## Installing
Run install.sh:
``` 
chmod +x install.sh
./install.sh
```
*Disclaimer: While this script does attempt to create a backup of all files that will be rewritten and asks what to do when a backup already exists, I do not take responsibility for any lost config files as consequence of running this script. You are strongly advised to read the insides of the script before running.*

The install script should do the following changes to your files:
1. Move every file/folder that will be changed to `Old_Rice` (same folder as the repo) in an attempt to create a backup
2. Link every folder/file in `Configs` to `~/.config/<folder/file>`
3. Link `Assets` to `~/.config/rice_assets`
4. Link `Scripts` to `~/.bscripts`
6. Copy every font at `~/.local/share/fonts/` to `Fonts`
7. Link `Fonts` to `~/.local/share/fonts`
8. Change permissions of all scripts in the repo to be executable

Additional steps for configuring the Gtk theme:
1. Run `lxappearance`
2. Select "rose-pine-moon-gtk" in the widgets section 

## Updating
Since the install script now uses symbolic links instead of copied files, all you have to do to update your configs to the latest version is to update the repo with `git pull`.

## Keybinds
These are many keybinds set in the `~/.config/bspwm/sxhkdrc` file. If you are gonna use this, I strongly recommend that you change those for your own or at least take your time to thorougly study the more important ones.

Media keys should also work for controlling play/pause and changing volume.