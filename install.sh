#!bin/bash

# sanity check
if [ -z "$1" ]
then
	echo "The username is empty"
	exit
fi

echo "Prakash i3-gaps auto rice installation"

# Run i3-gaps-deb
./i3-gaps-deb
echo "i3-gaps installed"

# install appplications
sudo apt-get install i3 xorg network-manager-gnome neofetch ranger chromium pulseaudio rxvt-unicode fonts-indic zathura neovim libnotify-bin maim

# unmute audio and set volume to 50%
#0
pactl set-sink-mute 0 false
pactl set-sink-volume @DEFAULT_SINK@ 50%
echo "#0 unmuted audio and set volume to 50%"

# copy dot file to system
#1
sudo mkdir /home/$1/.urxvt
sudo mkdir /home/$1/.urxvt/ext
sudo cp font-size /home/$1/.urxvt/ext/
echo "#1 font-size file copied..."

#2
sudo mkdir /home/$1/.config
sudo mkdir /home/$1/.config/i3
sudo cp i3_config /home/$1/.config/i3/config
echo "#2 i3 config file copied..."

#3
sudo mkdir /home/$1/.config/i3status
sudo cp i3status_config /home/$1/.config/i3status/config
echo "#3 i3status config file copied..."

#4
sudo cp .xinitrc /home/$1/
echo "#4 .xinitrc file copied..."

#5
sudo cp .profile /home/$1/
echo "#5 .profile file copied..."

#6
sudo cp .bash_profile /home/$1/
echo "#6 .bash_profile file copied"

#7
sudo cp .vimrc /home/$1/
echo "#8 .vimrc file copied..."

#8
sudo cp -r -v .local/ /home/$1/
echo "#8 .local binaries copied..."

#9
sudo cp -r -v .scripts/ /home/$1/
echo "#9 .script files copied..."

#10
sudo mkdir documents downloads pictures videos screenshots
echo "#10 default folder structure created"

echo "PARBS Installation Completed..."
