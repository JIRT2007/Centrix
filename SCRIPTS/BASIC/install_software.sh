#!/bin/bash

# INSTALAR SOFTWARE:
sudo apt update && sudo apt upgrade 

sudo apt install -y gnome-shell-extension-prefs \
	fonts-jetbrains-mono \
	gnome-extensions-app \
	papirus-icon-theme \
	qemu-system-x86 \
	gnome-tweaks \
	keepassxc \
	alacritty \
	fastfetch \
	flatpak \
	curl \
	wget \
	pipx \
	btop \
	tmux \
	vim

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --assumeyes flathub org.mozilla.firefox
#flatpak install --assumeyes flathub com.discordapp.Discord
