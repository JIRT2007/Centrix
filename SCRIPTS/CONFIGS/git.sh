#!/bin/bash

echo ""
read -p "You want to configure Git? [y/n] " optionGIT
case $optionGIT in
	
	[yY])
	read -p "Git name: " gitNAME
	read -p "Git email: " gitEMAIL

	echo "[Wait...]"  
	sleep 2
	
	git config --global user.name "$gitNAME"
	git config --global user.email "$gitEMAIL"
	
	echo "[Done!]"
	sleep 2
	;;
	
	[nN])
	exit 0
	;;

	*)
	echo "Order not found."
	sleep 1
	;;

esac
