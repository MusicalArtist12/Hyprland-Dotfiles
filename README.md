Collection of a few things I use to decorate my system. I make no promises that any of this will work for you.

# WARNING
the included makefile will overwrite any files with the same name. I am not responsible for any lost files

# Notes
make sure `$HOME/.local/bin` is in `$PATH`.
- add `append_path $HOME'/.local/bin'` to `/etc/profile` next to the rest of the `append_path`'s to make this a global change on your machine.

# Requirements (Non-Exhaustive)
- Bat
- BetterDiscord (And Discord)
- Catppuccin Mocha Mauve and Catppuccin Latte Lavender GTK and Cursor Themes
- cliphist
- dex
- flameshot-git
- greetd
- Gsettings
- hypridle
- Hyprland
- hyprlock
- hyprpaper
- Hyprpicker
- hyprpm
- Hyprspace
- iio-Hyprland
- ImageMagick
- ttf-jetbrains-mono-nerd
- kitty
- Kvantum
- libnotify
- mako
- mpvpaper - for the gif background
- network-manager-applet
- nwg-hello
- nwg-look
- Pokemon-Colorscripts
- polkit-gnome
- pamixer
- pavucontrol
- ranger
- rofi
- waybar
- wl-clipboard
- xdg-desktop-portal-hyprland
- yin-yang
- Zsh, oh-my-zsh 
    - zsh-autosuggestions
    - zsh-syntax-highlighting
- nwg-displays
- fastfetch
- cava

# Screenshots

![](/Screenshots/screenshot1.png)
![](/Screenshots/screenshot2.png)
![](/Screenshots/screenshot3.png)
![](/Screenshots/screenshot4.png)
![](/Screenshots/screenshot5.png)
![](/Screenshots/screenshot6.png)

![](/Screenshots/screenshot1-light.png)
![](/Screenshots/screenshot2-light.png)
![](/Screenshots/screenshot3-light.png)
![](/Screenshots/screenshot4-light.png)
![](/Screenshots/screenshot5-light.png)
![](/Screenshots/screenshot6-light.png)

# PATH
The makefile puts these in .local/bin.

- `battery-notify.py` and `media-notify.py` are both OSDs written in python and use mako.
- `pokemon-encounter.py` is used by zshrc - random chance of getting a shiny chickorita
- `dark-mode.py` and `light-mode.py` are both yin-yang scripts
- `hyprpicker-extended.sh` is a wrapper for hyprpicker that produces a notification and copies the hex code to clipboard

