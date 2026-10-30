#!/bin/bash

CENTRIX="$HOME/Centrix"

# RUTA WALLPAPERS:
	TOKYONIGHT="$CENTRIX/THEMES/TOKYO_NIGHT/tokyo_night.png"
	CATPPUCCIN="$CENTRIX/THEMES/CATPPUCCIN/catppuccin.jpg"
	EVERFOREST="$CENTRIX/THEMES/EVERFOREST/everforest.jpg"
	GRUVBOX="$CENTRIX/THEMES/GRUVBOX/gruvbox.jpg"
	NORD="$CENTRIX/THEMES/NORD/nord.jpg"
	MONOCHROMATIC="$CENTRIX/THEMES/MONOCHROMATIC/monochromatic.png"
	RISTRETTO="$CENTRIX/THEMES/RISTRETTO/ristretto.jpg"
while true; do
	clear

cat << "EOF"
___________.__
\__    ___/|  |__   ____   _____   ____   ______
  |    |   |  |  \_/ __ \ /     \_/ __ \ /  ___/
  |    |   |   Y  \  ___/|  Y Y  \  ___/ \___ \
  |____|   |___|  /\___  >__|_|  /\___  >____  >
                \/     \/      \/     \/     \/
*-----------------------------------------------*
| [1] TokyoNight.                               |
| [2] Catppuccin.                               |
| [3] Everforest.                               |
| [4] Gruvbox.                                  |
| [5] Nord.                                     |
| [6] Monochromatic.                            |
| [7] Ristretto.                                |
*-----------------------------------------------*
| [0] EXIT.                                     |
*-----------------------------------------------* 
EOF
	read -p "Enter your option: " optionMAIN
	case $optionMAIN in

		1) #TOKYO NIGHT
		gsettings set org.gnome.desktop.interface accent-color 'purple'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$TOKYONIGHT"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$TOKYONIGHT"
		cp $CENTRIX/THEMES/TOKYO_NIGHT/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;


		2) #CATPPUCCIN
		gsettings set org.gnome.desktop.interface accent-color 'pink'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

		gsettings set org.gnome.desktop.background picture-uri "file://$CATPPUCCIN"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$CATPPUCCIN"
		cp $CENTRIX/THEMES/CATPPUCCIN/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

		
		3) #EVERFOREST
		gsettings set org.gnome.desktop.interface accent-color 'green'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$EVERFOREST"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$EVERFOREST"
		cp $CENTRIX/THEMES/EVERFOREST/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;


		4) #GRUVBOX
		gsettings set org.gnome.desktop.interface accent-color 'yellow'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$GRUVBOX"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$GRUVBOX"
		cp $CENTRIX/THEMES/GRUVBOX/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

		
		5) #NORD
		gsettings set org.gnome.desktop.interface accent-color 'slate'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$NORD"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$NORD"
		cp $CENTRIX/THEMES/NORD/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
		

		6) #MONOCHROMATIC
		gsettings set org.gnome.desktop.interface accent-color 'slate'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$MONOCHROMATIC"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$MONOCHROMATIC"
		cp $CENTRIX/THEMES/MONOCHROMATIC/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

		7) #RISTRETTO
		gsettings set org.gnome.desktop.interface accent-color 'yellow'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$RISTRETTO"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$RISTRETTO"
		cp $CENTRIX/THEMES/RISTRETTO/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;		
	
		0)
		clear
		exit 0 & kill -9 $PPID
		;;


		*)
		echo "Order not found"
		sleep 1
		;;
	esac
done
