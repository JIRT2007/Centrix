#!/bin/bash

CENTRIX="$HOME/Centrix"

# RUTA WALLPAPERS:

	# TOKYO_NIGHT 
	RETROWAVE="$CENTRIX/THEMES/TOKYO_NIGHT/tokyo_night.png"
	CYBERMOTORCYCLE="$CENTRIX/THEMES/TOKYO_NIGHT/tokyo_night2.jpg"

	# CATPPUCCIN
	TUX="$CENTRIX/THEMES/CATPPUCCIN/catppuccin.jpg"
	RIDEN="$CENTRIX/THEMES/CATPPUCCIN/catppuccin2.png"

	# NORD
	ROCKS="$CENTRIX/THEMES/NORD/nord.jpg"
	CERBERUS="$CENTRIX/THEMES/NORD/nord2.jpg"
	
	# EPIC_RED
	BERSERK="$CENTRIX/THEMES/EPIC_RED/epic_red.png"
	CYBERGHOST="$CENTRIX/THEMES/EPIC_RED/epic_red2.jpg"
	
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
| [+ TOKYONIGHT ]           [+ CATPPUCCIN ]     |
|  L[1]-Retrowave            L[3]-Tux           |
|  L[2]-Cyber_motorcycles    L[4]-Riden         |
|                                               |
| [+ RISTRETTO ]            [+ EPIC RED ]       |
|  L[5]-Plymouth             L[7]-Berserk       |
|  L[6]-HotLine_Miami        L[8]-Cyber_ghost   | 
*-----------------------------------------------*
| [0] EXIT.                                     |
*-----------------------------------------------* 
EOF
	read -p "Enter your option: " optionMAIN
	case $optionMAIN in

	# TOKYO NIGHT
		1) #RETROWAVE
		gsettings set org.gnome.desktop.interface accent-color 'purple'
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

	# RISTRETTO
		5) #PLYMOUTH
		gsettings set org.gnome.desktop.interface accent-color 'orange'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$PLYMOUTH"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$PLYMOUTH"
		cp $CENTRIX/THEMES/RISTRETTO/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;		
		
		6) 
		gsettings set org.gnome.desktop.interface accent-color 'orange'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$HOTLINEMIAMI"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$HOTLINEMIAMI"
		cp $CENTRIX/THEMES/RISTRETTO/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;

		
	# EPIC_RED
		7) #BERSERK
		gsettings set org.gnome.desktop.interface accent-color 'red'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$BERSERK"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$BERSERK"
		cp $CENTRIX/THEMES/EPIC_RED/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		;;
		
		8) #CYBERGHOST
		gsettings set org.gnome.desktop.interface accent-color 'red'
		gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
		gsettings set org.gnome.desktop.background picture-uri "file://$CYBERGHOST"
		gsettings set org.gnome.desktop.background picture-uri-dark "file://$CYBERGHOST"
		cp $CENTRIX/THEMES/EPIC_RED/alacritty.toml $HOME/.config/alacritty/alacritty.toml
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
