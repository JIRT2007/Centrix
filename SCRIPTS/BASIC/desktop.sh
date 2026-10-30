#!/bin/bash

# INSTALL EXTENSIONS
pipx install gnome-extensions-cli --system-site-packages
pipx ensurepath
export PATH="$HOME/.local/bin:$PATH"
gext install blur-my-shell@aunetx
gext install space-bar@luchrioh

# COMPILE SCHEMAS:
sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell\@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/space-bar\@luchrioh/schemas/org.gnome.shell.extensions.space-bar.gschema.xml /usr/share/glib-2.0/schemas/

sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# KEYBINDINGS:
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Abrir Terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'alacritty'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Alt>q'
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>c']"

# ANCLAR SOFTWARE AL DOCK
gsettings set org.gnome.shell favorite-apps "\
	['org.mozilla.firefox.desktop', \
	 'org.keepassxc.KeePassXC.desktop', \
	 'spotify.desktop', \
	 'com.discordapp.Discord.desktop', \
	 'com.visualstudio.CodeOSS.desktop', \
	 'md.obsidian.Obsidian.desktop', \
	 'org.gnome.Extensions.desktop', \
	 'org.gnome.Nautilus.desktop', \
	 'Alacritty.desktop']"

# THEME:
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface accent-color 'purple'

# WALLPAPER: 
WALLPAPER="$HOME/Centrix/THEMES/TOKYO_NIGHT/tokyo_night.png"
gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER"

# BLUR MY SHELL:
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.overview blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.popup blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.coverflow-alt-tab blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.panel blur false

# SPACE BAR:
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.shell.extensions.space-bar.behavior show-empty-workspaces true
gsettings set org.gnome.shell.extensions.space-bar.behavior indicator-style 'workspaces-bar'
