#!/bin/bash

echo 'INSTALL XFCE + XTRAS FOR OMV'
echo
echo ' AMD + Samsung HDD/SDD Specific Issue'
echo ' failed command: WRITE FPDMA QUEUED'
echo '# Add to Grub:/etc/default/grub'
echo ' libata.force=noncq '
echo ' update-grub '
echo
echo '### Share root FS requires plugin - openmediavault-sharerootfs'
echo '### OMV Extras'
echo 'wget -O - https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install | bash'
echo
read -p " < OK >" </dev/tty

### xfce install:
apt-get update
# apt-get upgrade -y
# apt-get dist-upgrade

# Basics
apt install net-tools neofetch -y

# Configure APT to NOT install suggested or recommended packages
echo 'APT::Install-Recommends "0";' > /etc/apt/apt.conf
echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf

# install Graphics
apt-get install xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils -y

# install window manager gui
apt-get install xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager tango-icon-theme -y

# install greeter
apt-get install lightdm lightdm-gtk-greeter -y

# file manager - text editor - browser firefox
apt-get install thunar mousepad iceweasel -y

# To automatically mount USB
#apt-get install gvfs gvfs-backends policykit-1 udisks2 #gvfs-backends Not working on Buster
apt-get install thunar-volman udisks2 gvfs policykit-1 -y

# Gparted - Archive Manager
apt-get install gparted dtrx file-roller -y

# pulse audio
# apt-get install gstreamer0.10-plugins-base gstreamer0.10-plugins-good gstreamer0.10-plugins-bad pulseaudio gstreamer0.10-pulseaudio pavucontrol #gstreamer0.10 0utdated on Buster
apt-get install gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad pulseaudio gstreamer1.0-pulseaudio pavucontrol -y

# media player
#apt-get install rhythmbox rhythmbox-plugins
#apt-get install vlc browser-plugin-vlc libavcodec-extra-53
apt-get install vlc -y
apt-get install audacious -y

# Read PDF - Word Docs
apt-get install okular abiword -y


echo
echo 'Install tightvncserver'
echo 'Password Input Required'
echo
read -p " < OK >" </dev/tty

## VNC XFCE
apt-get install tightvncserver -y

# Start VNC to create config file
tightvncserver :1

# Then stop VNC
tightvncserver -kill :1


echo
echo 'FINISHED'
echo
echo ' AMD + Samsung HDD/SDD Specific Issue'
echo ' failed command: WRITE FPDMA QUEUED'
echo '# Add to Grub:/etc/default/grub'
echo ' libata.force=noncq '
echo ' update-grub '
echo

exit 0
