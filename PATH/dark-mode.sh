#!/usr/bin/env bash

# Julia Abdel-Monem - github.com/MusicalArtist12


spicetify config color_scheme mocha
spicetify apply

cat ~/.config/waybar/themes/Catppuccin-Mocha.css > ~/.config/waybar/theme.css
cat ~/.config/rofi/themes/Catppuccin-Mocha.rasi > ~/.config/rofi/theme.rasi
cat ~/.config/kitty/themes/Catppuccin-Mocha.conf > ~/.config/kitty/current-theme.conf
cat ~/.config/vim/Catppuccin-Mocha.vim > ~/.config/vim/theme.vim
cat ~/.config/hypr/themes/Catppuccin-Mocha.conf > ~/.config/hypr/theme.conf
cat ~/.local/share/nwg-look/gsettings-dark > ~/.local/share/nwg-look/gsettings

echo '--theme="Catppuccin Mocha"' > ~/.config/bat/config

cat ~/.config/BetterDiscord/themes/mocha.theme.css > ~/.config/BetterDiscord/data/stable/custom.css
parse-mako-config.py ~/.config/mako/themes/Catppuccin-Mocha.css ~/.config/mako/config_source ~/.config/mako/config

hyprctl reload
makoctl reload
killall -SIGUSR1 kitty
killall -SIGUSR2 waybar

nwg-look -a


hyprctl setcursor catppuccin-mocha-mauve $HYPRCURSOR_SIZE

notify-send "System set to Dark Mode"

