#!/bin/bash

CENTRIX="$HOME/Centrix"

# RUTA WALLPAPERS:

	# TOKYO_NIGHT 
	CENTRIX_DEFAULT="$CENTRIX/THEMES/TOKYO_NIGHT/tokyo_night0.png"
	RETROWAVE="$CENTRIX/THEMES/TOKYO_NIGHT/tokyo_night.jpg"
	CYBERMOTORCYCLE="$CENTRIX/THEMES/TOKYO_NIGHT/tokyo_night2.jpg"

	# CATPPUCCIN
	TUX="$CENTRIX/THEMES/CATPPUCCIN/catppuccin.jpg"
	RIDEN="$CENTRIX/THEMES/CATPPUCCIN/catppuccin2.png"

	# NORD
	ROCKS="$CENTRIX/THEMES/NORD/nord.jpg"
	DRAGONS="$CENTRIX/THEMES/NORD/nord2.jpg"
	
	# EPIC_RED
	BERSERK="$CENTRIX/THEMES/EPIC_RED/epic_red.png"
	GHOST="$CENTRIX/THEMES/EPIC_RED/epic_red2.jpg"
	
	# RISTRETTO
	PLYMOUTH="$CENTRIX/THEMES/RISTRETTO/ristretto.jpg"
	HOTLINEMIAMI="$CENTRIX/THEMES/RISTRETTO/ristretto2.jpg"
while true; do
	clear

cat << "EOF"
___________.__
\__    ___/|  |__   ____   _____   ____  ______
  |    |   |  |  \_/ __ \ /     \_/ __ \/  ___/
  |    |   |   Y  \  ___/|  Y Y  \  ___/\___ \
  |____|   |___|__/\____> __|_|__/\____>/_____>
*-----------------------------------------------*
| ID    THEME          NAME                     |
*-----------------------------------------------* 
| [0]  : Tokyo_Night : "Centrix Default"        |
| [1]  : Tokyo_Night : "Retrowave"              |
| [2]  : Tokyo_Night : "Cyber motorcycle"       |
| [3]  : Catppuccin  : "Tux"                    |
| [4]  : Catppuccin  : "Riden"                  |
| [5]  : Nord        : "Rocks"                  |
| [6]  : Nord        : "Dragons"                |
| [7]  : Ristretto   : "Plymouth"               |
| [8]  : Ristretto   : "HotLine Miami"          |
| [9]  : Epic Red    : "Berserk"                |
| [10] : Epic Red    : "Ghost"                  |
*-----------------------------------------------*
| [Q] EXIT.                                     |
*-----------------------------------------------* 
EOF
	read -p "Enter your option: " optionMAIN
	case $optionMAIN in

	# TOKYO NIGHT
		0) #CENTRIX_DEFAULT
		gsettings set org.gnome.desktop.interface accent-color 'purple'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$CENTRIX_DEFAULT"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$CENTRIX_DEFAULT"
		cp $CENTRIX/THEMES/TOKYO_NIGHT/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

		1) #RETROWAVE
		gsettings set org.gnome.desktop.interface accent-color 'pink'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$RETROWAVE"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$RETROWAVE"
		cp $CENTRIX/THEMES/TOKYO_NIGHT/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
		
		2) #CYBER_MOTORCYCLES
		gsettings set org.gnome.desktop.interface accent-color 'purple'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$CYBERMOTORCYCLE"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$CYBERMOTORCYCLE"
		cp $CENTRIX/THEMES/TOKYO_NIGHT/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
		
	# CATPPUCCIN
		3) #TUX
		gsettings set org.gnome.desktop.interface accent-color 'pink'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$TUX"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$TUX"
		cp $CENTRIX/THEMES/CATPPUCCIN/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
	
		4) # RIDEN
		gsettings set org.gnome.desktop.interface accent-color 'purple'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$RIDEN"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$RIDEN"
		cp $CENTRIX/THEMES/CATPPUCCIN/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
	
	# NORD
		5) #ROCKS
		gsettings set org.gnome.desktop.interface accent-color 'slate'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$ROCKS"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$ROCKS"
		cp $CENTRIX/THEMES/NORD/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
	
		6) # DRAGONS
		gsettings set org.gnome.desktop.interface accent-color 'slate'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$DRAGONS"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$DRAGONS"
		cp $CENTRIX/THEMES/NORD/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

	# RISTRETTO
		7) #PLYMOUTH
		gsettings set org.gnome.desktop.interface accent-color 'orange'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$PLYMOUTH"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$PLYMOUTH"
		cp $CENTRIX/THEMES/RISTRETTO/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;		
		
		8) 
		gsettings set org.gnome.desktop.interface accent-color 'orange'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$HOTLINEMIAMI"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$HOTLINEMIAMI"
		cp $CENTRIX/THEMES/RISTRETTO/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

		
	# EPIC_RED
		9) #BERSERK
		gsettings set org.gnome.desktop.interface accent-color 'red'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$BERSERK"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$BERSERK"
		cp $CENTRIX/THEMES/EPIC_RED/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
		
		10) #GHOST
		gsettings set org.gnome.desktop.interface accent-color 'red'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$GHOST"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$GHOST"
		cp $CENTRIX/THEMES/EPIC_RED/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
	
		[qQ])
		clear
		exit 0 & kill -9 $PPID
		;;

		*)
		echo "Order not found"
		sleep 1
		;;
	esac
done
