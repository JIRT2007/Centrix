#!/bin/bash
echo ""
read -p "You want to install KVM/Qemu? [y/n] " optionQEMU
case $optionQEMU in
	[yY]) 	sudo apt install -y qemu-system-x86
		mkdir -p ISOs/VMs  
		;;
	[nN]) exit 0 ;;
	*) echo "Order not found."
		sleep 1
	;;
esac

