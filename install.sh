#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# ufw firewall installation
sudo apt install ufw -y
sudo ufw enable
sudo ufw status

# xorg display server installation
#sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# Build-essential.
sudo apt install build-essential dkms linux-headers-$(uname -r) -y
#sudo apt install -y build-essential 

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

#XFCE packages
#sudo apt install -y xfce4 xfce4-goodies

# Browser Installation Firefox / Librewolf
#sudo apt install -y firefox-esr 
sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates
distro=$(if echo " una vanessa focal jammy bullseye vera uma" | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF
sudo apt update
sudo apt install librewolf -y


# Install Youtube-Dlp & FFMPEG
sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp 
sudo chmod a+rx /usr/local/bin/yt-dlp # Make executable
sudo apt-get install ffmpeg -y


# Network File Tools/System Events
#sudo apt install -y dialog mtools acpi acpid gvfs-backends
#sudo systemctl enable avahi-daemon
#sudo systemctl enable acpid

# Sound packages (pulseaudio installed prior)
#sudo apt install -y alsa-utils volumeicon-alsa

# Install Neofetch/HTOP/Curl/Mugshot
sudo apt install -y neofetch htop curl mugshot gufw wget

# Install Geany Editor / VLC Player / Deluge
sudo apt install -y geany vlc deluge gnome-multi-writer file-roller galculator gparted

# Install Games 
sudo apt install 2048-qt -y 
sudo apt install kpat -y
sudo apt install quadrapassel -y
#sudo apt install supertux -y
sudo apt install  frozen-bubble -y

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
#sudo apt install -y exa

# Printing and bluetooth (if needed)
#sudo apt install -y cups
#sudo apt install -y bluez blueman
#sudo systemctl enable bluetooth
#sudo systemctl enable cups

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
# sudo apt install -y micro
#sudo apt install -y vim

# Install Restricted Extra
sudo apt install rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi -y

# Install fonts
#sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus -y
sudo apt install ttf-mscorefonts-installer -y
sudo apt install fonts-crosextra-carlito fonts-crosextra-caladea -y

# Install Theme & Icon
sudo apt install arc-theme -y
sudo apt install breeze-icon-theme -y

# Install Flatpak
sudo apt install flatpak -y


# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
sudo apt install slick-greeter -y
sudo apt install -y lightdm-gtk-greeter-settings -y
sudo systemctl enable lightdm

sudo apt autoremove
sudo apt autoclean

printf "\nTime to reboot! \n"