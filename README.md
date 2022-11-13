# omvxfce
#XFCE and more for OMV 

A shell script to install XFCE and More on OpenMediaVault.  

## INSTALLATION
```bash
cd ~
wget https://raw.githubusercontent.com/RapidEdwin08/omvxfce/main/omvxfce.sh -P ~/
sudo chmod 755 ~/omvxfce.sh
./omvxfce.sh
```

## What's Installed:  

Basics  
net-tools neofetch  

Configure APT to NOT install suggested or recommended packages - /etc/apt/apt.conf  
APT::Install-Recommends "0";  
APT::Install-Suggests "0";  

install Graphics  
xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils  

install window manager gui  
xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager tango-icon-theme  

install greeter   
lightdm lightdm-gtk-greeter  

file manager - text editor - browser firefox  
thunar mousepad iceweasel  

to automatically mount USB  
thunar-volman udisks2 gvfs policykit-1  

Gparted - Archive Manager  
gparted dtrx file-roller  

pulse audio  
gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad pulseaudio gstreamer1.0-pulseaudio pavucontrol  

media players  
rhythmbox rhythmbox-plugins  
vlc  
audacious  

Read PDF - Word Docs  
okular abiword  

tightvncserver 'Password Input Required during Install'  
