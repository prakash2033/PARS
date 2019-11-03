#!bin/bash

# sanity check
if [ -z "$1" ]
then
	echo "The username is empty"
	exit
fi

# Run i3-gaps-deb
./i3-gaps-deb
echo "i3-gaps installed"

# install appplications
sudo apt-get install urxvt

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