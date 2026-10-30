#!/bin/bash

echo ""
read -p "You want to install Discord? [y/n] " optionDISCORD
case $optionDISCORD in
	
	[yY])
	wget -O discord.deb "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=linux&arch=x64&format=deb"
	
	sudo dpkg -i discord.deb
	rm discord.deb	
	;;

	[nN])
	exit 0
	;;

	*)
	echo "Order not found."
	sleep 1
	;;
esac
