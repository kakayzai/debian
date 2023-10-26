#!/bin/bash

# Uninstall Debian Bloat

# Remove Libre Office
#sudo apt purge libreoffice* -y

# Remove Softwares
sudo apt purge xterm xsane xarchiver xfburn rhythmbox orage goldendict exfalso parole quodlibet -y
sudo apt purge gedit xed -y
sudo apt purge conky-all conky-manager conky-toggle-mx conky conky-std mx-conky-data -y
sudo apt purge lbreakout2 peg-e swell-foop -y
sudo apt purge mx-viewer transmission-qt thunderbird -y
sudo apt purge asunder gmtp strawberry xfburn webcamoid -y
sudo apt purge mc mcedit -y 
sudo apt purge baobab advert-block-antix -y

#sudo apt purge imagemagick-* -y

# Remove System Utilities
sudo apt purge kasumi fcitx fcitx5 fcitx* fcitx5* xiterm+thai uim mozc-utils-gui mozc* -y
sudo apt purge ibus -y
sudo apt purge im-config -y
sudo apt purge mlterm -y
sudo apt purge mlterm* -y
sudo apt-get purge debian-reference-it -y

# Remove XFCE Components
sudo apt purge xfce4-clipman xfce4-notifyd xfce4-dict xfce4-power-manager xfce4-sensors-plugin -y


# Remove Games


sudo apt autoremove -y
sudo apt autoclean -y

printf "\n Successfully remove bloat softwares\n"
