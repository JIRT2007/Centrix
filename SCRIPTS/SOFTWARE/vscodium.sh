#!/bin/bash
echo ""
read -p "You want to install VSCodium? [y/n] " optionVSCODIUM
case $optionVSCODIUM in
	[yY])
	VSCODIUM=$(curl -s https://api.github.com/repos/vscodium/vscodium/releases/latest | grep -Po '"tag_name": "\K[^"]*')
	wget -O vscodium.deb "https://github.com/VSCodium/vscodium/releases/download/${VSCODIUM}/codium_${VSCODIUM}_amd64.deb"
	sudo dpkg -i vscodium.deb
	rm vscodium.deb
	;;
	[nN]) exit 0 ;;
	*) echo "Order not found."
		sleep 1
	;;
esac
