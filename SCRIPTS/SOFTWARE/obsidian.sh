#!/bin/bash
echo ""
read -p "You want to install Obsidian? [y/n] " optionOBSIDIAN
case $optionOBSIDIAN in
	[yY])
	OBSIDIAN=$(curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest | grep -Po '"tag_name": "v\K[^"]*')
	wget -O obsidian.deb "https://github.com/obsidianmd/obsidian-releases/releases/latest/download/obsidian_${OBSIDIAN}_amd64.deb"
	sudo dpkg -i obsidian.deb
	rm obsidian.deb
	;;
	[nN]) exit 0 ;;

	*) echo "Order not found."
		sleep 1
	;;
esac
