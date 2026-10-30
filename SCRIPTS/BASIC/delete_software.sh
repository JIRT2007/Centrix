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
	totem \
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
