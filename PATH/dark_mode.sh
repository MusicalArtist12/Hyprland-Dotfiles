#!/usr/bin/env bash

# Julia Abdel-Monem - github.com/MusicalArtist12


spicetify config color_scheme mocha
spicetify apply

cat ~/.config/waybar/Catppuccin-Mocha.css > ~/.config/waybar/theme.css
cat ~/.config/rofi/Catppuccin-Mocha.rasi > ~/.config/rofi/theme.rasi
cat ~/.config/kitty/Catppuccin-Mocha.conf > ~/.config/kitty/current-theme.conf
cat ~/.config/mako/config_dark > ~/.config/mako/config
cat ~/.config/vim/Catppuccin-Mocha.vim > ~/.config/vim/theme.vim
cat ~/.config/hypr/Catppuccin-Mocha.conf > ~/.config/hypr/theme.conf
echo '--theme="Catppuccin Mocha"' > ~/.config/bat/themes

cat ~/.local/share/nwg-look/gsettings-dark > ~/.local/share/nwg-look/gsettings
nwg-look -a


cat ~/.config/BetterDiscord/themes/mocha.theme.css > ~/.config/BetterDiscord/data/stable/custom.css
~/.config/mako/parse_config.py ~/.config/mako/Catppuccin-Mocha.css ~/.config/mako/config_source ~/.config/mako/config

hyprctl reload
makoctl reload
killall -SIGUSR1 kitty
killall -SIGUSR2 waybar

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

echo '--theme="Catppuccin Mocha"' > ~/.config/bat/config

hyprctl setcursor catppuccin-mocha-mauve $HYPRCURSOR_SIZE
# gsettings set org.gnome.desktop.interface cursor-theme 'catppuccin-mocha-mauve'

notify-send "system set to dark mode"

