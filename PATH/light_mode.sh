#!/usr/bin/env bash

# Julia Abdel-Monem - github.com/MusicalArtist12

spicetify config color_scheme latte
spicetify apply

cat ~/.config/waybar/Catppuccin-Latte.css >> ~/.config/waybar/theme.css
cat ~/.config/rofi/Catppuccin-Latte.rasi >> ~/.config/rofi/theme.rasi
cat ~/.config/kitty/Catppuccin-Latte.conf >> ~/.config/kitty/current-theme.conf
cat ~/.config/mako/config_light >> ~/.config/mako/config
cat ~/.config/vim/Catppuccin-Latte.vim >> ~/.config/vim/theme.vim
cat ~/.config/hypr/Catppuccin-Latte.conf >> ~/.config/hypr/theme.conf

cat ~/.local/share/nwg-look/gsettings-light >> ~/.local/share/nwg-look/gsettings
nwg-look -a

echo '--theme="Catppuccin Latte"' > ~/.config/bat/themes

cat ~/.config/BetterDiscord/themes/latte.theme.css >> ~/.config/BetterDiscord/data/stable/custom.css
~/.config/mako/parse_config.py ~/.config/mako/Catppuccin-Latte.css ~/.config/mako/config_source ~/.config/mako/config

hyprctl reload
makoctl reload
killall -SIGUSR1 kitty
killall -SIGUSR2 waybar

gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'

echo '--theme="Catppuccin Latte"' > ~/.config/bat/config

hyprctl setcursor catppuccin-latte-lavender $HYPRCURSOR_SIZE 
# gsettings set org.gnome.desktop.interface cursor-theme 'catppuccin-latte-lavender'

notify-send "system set to light mode"
