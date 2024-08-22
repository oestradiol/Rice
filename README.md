# My dotfiles
## An updated, revised and personalised version of two other rices I like.
### The rices in question are [dots-2.0](https://github.com/ikz87/dots-2.0) from cutie ikz87 (most scripts) and Emily and Katie's [dotfiles](https://github.com/egirldevs/dotfiles) (mainly the eww bar). 

## Preview
Here's a cool preview video:


https://github.com/oestradiol/Rice/assets/48662592/bad9c4b7-9183-40a8-a41d-eb674098b9cb


Please note that this rice was made for a single 1920x1080 monitor setup, If you have anything different than that you *might* have to tweak a thing or two on your own. Don't think you should come across much tho, hopefully. 

## Dependency list:
### AUR packages
_**Disclaimer:** I did not test this on another machine after I finished it on mine. There's a strong possibility that I forgot one or two dependencies. If you come across this and find something missing, please contact me so I update it here._

Just run this for this section (assuming you use yay):
```
yay -Sy --needed bspwm cava colorpicker dunst eww flameshot starship hyfetch kitty komorebi gst-libav gst-plugins-good lxappearance mantablockscreen picom-ftlabs-git playerctl rofi rofi-emoji rofi-greenclip rose-pine-gtk-theme sox sxhkd noto-fonts-emoji ttf-cousine-nerd ttf-work-sans ttf-fantasque-nerd ttc-iosevka-curly ttf-cascadia-code-nerd wmctrl xclip xdotool qt5ct
```
If you're not using arch, this is the dependency list, install in wathever way you want:
- bspwm - Window manager
- cava-git - For the desktop audio visualiser
- colorpicker - Self-explanatory name
- dunst - Notifications
- eww-git - Topbar
- flameshot - Screenshotting tool
- starship - Powerline for zsh
- hyfetch - Colored LGBT+ neofetch
- kitty - Terminal
- komorebi - Video background, can be substituted for feh if you don't want that, can be quite heavy 
- gst-libav - Komorebi dependency for video bgs
- gst-plugins-good - Komorebi dependency for video bgs
- lxappearance - Theming
- qt5ct - Theming
- rose-pine-gtk-theme - Theming
- mantablockscreen - Lock screen
- picom-ftlabs-git - Compositor
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
_Disclaimer: While this script does attempt to create a backup of all files that will be rewritten and asks what to do when a backup already exists, I do not take responsibility for any lost config files as consequence of running this script. You are strongly advised to read the insides of the script before running._

Besides that, there are a few things to notice:
1. The profile picture shown in the lockscreen can be changed by putting the desired image in `Rice/Other/.face`. <br>
2. If you wanna use the neofetch like I did, just add this to your .bashrc, .zshrc or whatever: `alias neofetch='hyfetch --ascii ~/Ricing/Configs/neofetch/uwufetch'`. You can also change the ASCII in that file if you want. <br>
3. The neofetch has the CPU and GPU info hardcoded to load faster. Remember to update it with your info!
4. A few other recommended fonts for more compatibility:
  - ttf-dejavu
  - ttf-hack
  - ttf-liberation
  - ttf-nerd-fonts-symbols

The install script should do the following changes to your files:
1. Move every file/folder that will be changed to `Old_Rice` (in the same folder as the repo) in an attempt to create a backup
2. Link every folder/file in `Configs` to `~/.config/<folder/file>`
3. Link `Assets` to `~/.config/rice_assets`
4. Link `Scripts` to `~/.bscripts`
6. Copy every font at `~/.local/share/fonts/` to `Fonts`
7. Link `Fonts` to `~/.local/share/fonts`
8. Move and Link, if exists, your .zshrc and your .face; Otherwise, it'll use the default ones at the "Other" folder
9. Change permissions of all scripts in the repo to be executable

Additional steps for configuring the Gtk theme:
1. Run `lxappearance`
2. Select "rose-pine-moon-gtk" in the widgets section 
3. Run `qt5ct`
4-1. Configure it as you like (I haven't really added anything in the Rice for this but I think it's important so decided to put here anyways)
4-2. I recommend using Catpuccin Mocha or some theme like that

## Updating
Since the install script now uses symbolic links instead of copied files, all you have to do to update your configs to the latest version is to update the repo with `git pull`.

## Keybinds
These are many keybinds set in the `~/.config/bspwm/sxhkdrc` file. If you are gonna use this, I strongly recommend that you change those for your own or at least take your time to thorougly study the most important ones.
