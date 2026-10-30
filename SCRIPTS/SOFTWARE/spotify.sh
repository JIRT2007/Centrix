#!/bin/bash

echo ""
read -p "You want to install Spotify? [y/n] " optionSPOTIFY
case $optionSPOTIFY in
	
	[yY]) 
	curl -sS https://download.spotify.com/debian/pubkey_5384CE82BA52C83A.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
	
	echo "deb https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
	
	sudo apt update && sudo apt upgrade && sudo apt install -y spotify-client
	;;

	[nN])
	exit 0
	;;

	*)
	echo "Order not found."
	sleep 1
	;;
esac
