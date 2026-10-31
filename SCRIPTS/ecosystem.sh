#!/bin/bash

# ELIMINAR SOFTWARE:
sudo apt purge -y debian-reference-* \
	libreoffice-* \
	simple-scan \
	file-roller \
	firefox-esr \
	malcontent \
	evolution \
	seahorse \
	shotwell \
	evince \
	yelp \
	lynx \
	nano \
	gnome-system-monitor \
	gnome-sound-recorder \
	gnome-font-viewer \
	gnome-connections \
	gnome-characters \
	gnome-calculator \
	gnome-snapshot \
	gnome-contacts \
	gnome-weather \
	gnome-music \
	gnome-maps \
	gnome-logs \
	gnome-tour

sudo apt autoremove -y

# ACTUALIZAR SISTEMA
sudo apt update && sudo apt upgrade 

# INSTALAR SOFTWARE:
sudo apt install -y gnome-shell-extension-prefs \
	fonts-jetbrains-mono \
	gnome-extensions-app \
	papirus-icon-theme \
	gnome-tweaks \
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
