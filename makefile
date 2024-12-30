ifeq ($(XDG_CONFIG_HOME),)
XDG_CONFIG_HOME := $(HOME)/.config
endif 

ifeq ($(XDG_DATA_HOME),)
XDG_DATA_HOME := $(HOME)/.local/share
endif 

catppuccin-gtk-themes:
	yay -S catppuccin-gtk-theme-mocha catppuccin-gtk-theme-macchiato catppuccin-gtk-theme-latte catppuccin-gtk-theme-frappe catppuccin-cursors-frappe catppuccin-cursors-latte catppuccin-cursors-macchiato catppuccin-cursors-mocha papirus-icon-theme

fonts:
	sudo pacman -S --needed  ttf-jetbrains-mono-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji

xdg-desktop-portal:
	sudo pacman -S --needed xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland

nwg-shell:
	sudo pacman -S --needed nwg-displays nwg-look 
	cp -r XDG_CONFIG_HOME/nwg-look $(XDG_CONFIG_HOME)/
	cp -r XDG_DATA_HOME/nwg-look $(XDG_DATA_HOME)/

polkit:
	sudo pacman -S --needed polkit polkit-gnome glib2

utils:
	sudo pacman -S --needed dex rofi-wayland waybar
	mkdir -p $(HOME)/.local/bin/
	cp -r PATH/* $(HOME)/.local/bin/
	cp -r XDG_CONFIG_HOME/rofi $(XDG_CONFIG_HOME)/
	cp -r XDG_CONFIG_HOME/waybar $(XDG_CONFIG_HOME)/
	mkdir -p $(XDG_DATA_HOME)/applications
	cp -r XDG_DATA_HOME/applications/* $(XDG_DATA_HOME)/applications/

clipboard:
	sudo pacman -S --needed cliphist wl-clipboard  

qt-theming:
	sudo pacman -S --needed qt5ct qt6ct kvantum
	cp -r XDG_CONFIG_HOME/qt5ct $(XDG_CONFIG_HOME)/
	cp -r XDG_CONFIG_HOME/qt6ct $(XDG_CONFIG_HOME)/
	cp -r XDG_CONFIG_HOME/Kvantum $(XDG_CONFIG_HOME)/

screenshot:
	yay -S --needed grim flameshot-git 

hyprland: fonts xdg-desktop-portal polkit utils
	sudo pacman -S --needed hyprland hyprlock hyprpaper hypridle
	cp -r XDG_CONFIG_HOME/hypr $(XDG_CONFIG_HOME)/

greeter: hyprland
	sudo pacman -S --needed greetd nwg-hello
	sudo cp -r ROOT/etc/greetd /etc/
	sudo cp -r ROOT/etc/nwg-hello /etc/
	sudo systemctl enable greetd

applications:
	sudo pacman -S --needed kitty network-manager-applet pamixer pavucontrol thunar firefox ranger fastfetch
	cp -r XDG_CONFIG_HOME/kitty $(XDG_CONFIG_HOME)/
	cp -r XDG_CONFIG_HOME/fastfetch $(XDG_CONFIG_HOME)/
	cp -r XDG_CONFIG_HOME/Thunar $(XDG_CONFIG_HOME)/
	cp XDG_CONFIG_HOME/code-flags.conf $(XDG_CONFIG_HOME)/
	cp XDG_CONFIG_HOME/spotify-launcher.conf $(XDG_CONFIG_HOME)/

desktop-notifications:
	sudo pacman -S --needed mako libnotify
	cp -r XDG_CONFIG_HOME/mako $(XDG_CONFIG_HOME)/
