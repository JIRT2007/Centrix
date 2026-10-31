#!/bin/bash
echo ""
read -p "You want to install KeePassXC? [y/n] " optionKEEPASS
case $optionKEEPASS in
	[yY]) sudo apt install -y keepassxc ;;
	[nN]) exit 0 ;;
	*) echo "Order not found."
		sleep 1
	;;
esac

