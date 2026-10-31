#!/bin/bash

while true; do
	clear

cat << "EOF"
      _________                __         .__        
      \_   ___ \  ____   _____/  |________|__|__  ___
      /    \  \/_/ __ \ /    \   __\_  __ \  \  \/  /
      \     \___\  ___/|   |  \  |  |  | \/  |>    < 
       \______  /\___  >___|  /__|  |__|  |__/__/\_ \
              \/     \/     \/                     \/
*----------------------------------------------------------*
| Welcome to Centrix !!                                    |                  
| This is not an operating system, it is a customization   |
| for Debian GNU/Linux and its derivatives,                |
| with GNOME desktop enviroment.                           |
| In tribute to the community and inspired by Omakub.      |
|                                                          |
| Developed by JIRT2007.                                   |
|                                                          |
*----------------------------------------------------------*
| [y] INSTALL Centrix.                                     |
| [n] EXIT.                                                |
*----------------------------------------------------------*

EOF
	read -p "Enter your option: " optionMAIN
	case $optionMAIN in

		[yY])
		mkdir -p .config/alacritty
		cp $HOME/Centrix/THEMES/TOKYO_NIGHT/alacritty.toml $HOME/.config/alacritty/alacritty.toml
		cp $HOME/Centrix/SETTINGS/bashrc $HOME/.bashrc

		# BASIC CONFIGURATION:
		"$HOME/Centrix/SCRIPTS/ecosystem.sh"
		# CONFIGURE GIT:
		"$HOME/Centrix/SCRIPTS/git.sh"
		# OPTIONAL SOFTWARE:
		"$HOME/Centrix/SCRIPTS/SOFTWARE/spotify.sh"
		"$HOME/Centrix/SCRIPTS/SOFTWARE/discord.sh"
		"$HOME/Centrix/SCRIPTS/SOFTWARE/obsidian.sh"
		"$HOME/Centrix/SCRIPTS/SOFTWARE/vscodium.sh"
		"$HOME/Centrix/SCRIPTS/SOFTWARE/keepassxc.sh"
		"$HOME/Centrix/SCRIPTS/SOFTWARE/qemu.sh"
		"$HOME/Centrix/SCRIPTS/SOFTWARE/fpc.sh"
		# CONFIGURE DESKTOP:
		"$HOME/Centrix/SCRIPTS/desktop.sh"

		#mv $HOME/Centrix $HOME/.Centrix
		;;
		

		[nN])
		clear
		exit 0
		;;

		
		*)
		echo "Order not found."
		sleep 1
		;;
	

	esac
done 
