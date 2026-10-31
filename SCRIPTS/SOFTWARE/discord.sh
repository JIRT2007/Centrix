#!/bin/bash
echo ""
read -p "You want to install Discord? [y/n] " optionDISCORD
case $optionDISCORD in
	[yY]) flatpak install flathub com.discordapp.Discord ;;
	[nN]) exit 0 ;;
	*) echo "Order not found."
		sleep 1 
	;;
esac
