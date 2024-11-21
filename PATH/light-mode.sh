#!/usr/bin/env bash

# Julia Abdel-Monem - github.com/MusicalArtist12

spicetify config color_scheme latte
spicetify apply

cat ~/.config/waybar/themes/Catppuccin-Latte.css >> ~/.config/waybar/theme.css
cat ~/.config/rofi/themes/Catppuccin-Latte.rasi >> ~/.config/rofi/theme.rasi
cat ~/.config/kitty/themes/Catppuccin-Latte.conf >> ~/.config/kitty/current-theme.conf
cat ~/.config/vim/Catppuccin-Latte.vim >> ~/.config/vim/theme.vim
cat ~/.config/hypr/Catppuccin-Latte.conf >> ~/.config/hypr/theme.conf
cat ~/.config/BetterDiscord/themes/latte.theme.css >> ~/.config/BetterDiscord/data/stable/custom.css
cat ~/.local/share/nwg-look/gsettings-light > ~/.local/share/nwg-look/gsettings

echo '--theme="Catppuccin Latte"' > ~/.config/bat/config

parse-mako-config.py  ~/.config/mako/themes/Catppuccin-Latte.css ~/.config/mako/config_source ~/.config/mako/config

hyprctl reload
makoctl reload
killall -SIGUSR1 kitty
killall -SIGUSR2 waybar

nwg-look -a

hyprctl setcursor catppuccin-latte-lavender $HYPRCURSOR_SIZE 

notify-send "System set to Light Mode"
