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

# Install Neofetch/HTOP/Curl/Mugshot/Wget/Gufw
sudo apt install -y neofetch htop curl mugshot wget gufw

#XFCE packages
#sudo apt install -y xfce4 xfce4-goodies
sudo apt install ristretto -y
sudo apt install catfish -y
sudo apt install mousepad -y
sudo apt install xfce4-screenshooter -y
sudo apt install xfce4-taskmanager -y
sudo apt instlal xfce4-whiskermenu-plugin -y


# Browser Installation
#sudo apt install firefox -y
#sudo apt install firefox-esr -y
#sudo apt install chromium -y

#Install Librewolf
#sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates
#distro=$(if echo " una vanessa focal jammy bullseye vera uma" | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
#wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
#sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF
#sudo apt update
#sudo apt install librewolf -y

# Install Thorium Browser
#wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
#sudo mv thorium.list /etc/apt/sources.list.d/
#sudo apt update
#sudo apt install thorium-browser

# Install Brave Browser
#sudo apt install curl
#sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
#echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#sudo apt update
#sudo apt install brave-browser


# Install Youtube-Dlp & FFMPEG
sudo apt install pip -y
sudo apt install python3-mutagen -y
sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp 
sudo chmod a+rx /usr/local/bin/yt-dlp # Make executable
sudo apt-get install ffmpeg -y


# Network File Tools/System Events
#sudo apt install -y dialog mtools acpi acpid gvfs-backends
#sudo systemctl enable avahi-daemon
#sudo systemctl enable acpid

# Sound packages (pulseaudio installed prior)
#sudo apt install -y alsa-utils volumeicon-alsa

# Install Geany Editor / VLC Player / Deluge
sudo apt install -y atril geany vlc deluge file-roller galculator gparted psensor
#sudo apt install -y libreoffice
#sudo apt install -y gimp
#sudo apt install -y krita
#sudo apt install simplescreenrecorder -y
#sudo apt install bleachbit -y
#sudo apt install stacer -y
#sudo apt install gnome-multi-writer -y
#sudo apt install gthumb -y      # image viewer
#sudo apt install okular -y      # Okular is a universal document viewer (PDF, Postscript, DjVu, CHM, XPS, ePub)
#sudo apt install rhythmbox -y
#sudo apt install clamav clamav-daemon clamtk -y



# Install Games 
sudo apt install 2048-qt -y 
sudo apt install kpat -y
sudo apt install quadrapassel -y
sudo apt install supertux -y
#sudo apt install aisleriot -y
#sudo apt install enigma -y
#sudo apt install hedgewars -y
#sudo apt-get install supertuxkart -y
#sudo apt-get install froggato -y
#sudo apt-get install extremetuxracer
#sudo apt install supertuxkart
#sudo apt install frozen-bubble
#sudo apt install openclonk



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

# Install Wine
#sudo apt install software-properties-common apt-transport-https curl -y
#sudo dpkg --add-architecture i386 -y
#sudo apt install wine64 wine32 -y


# Install Flatpak
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak install flathub com.github.tchx84.Flatseal
#flatpak install flathub com.usebottles.bottles


# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
sudo apt install slick-greeter -y
#sudo apt install -y lightdm-gtk-greeter-settings -y
#sudo systemctl enable lightdm

sudo apt autoremove
sudo apt autoclean

printf "\nTime to reboot! \n"
