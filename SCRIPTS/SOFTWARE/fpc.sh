#!/bin/bash
echo ""
read -p "You want to install FreePascal Compiler? [y/n] " optionFPC
case $optionFPC in
	[yY]) sudo apt install -y fpc ;;
	[nN]) exit 0 ;;
	*) echo "Order not found." 
		sleep 1
	;;
esac
