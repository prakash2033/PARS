# PARS
Prakash Auto Rice Script

## Purpose
The purpose of this repo is to create an automated rice script to get a fully configured i3-gaps desktop environment.

## Pre-requisite
- Minimum debian install (debian 9 stretch or debian 10 buster)
- For WiFi
```
   nano /etc/network/interfaces
   allow-hotplug wlp3s0
   auto wlp3s0
   iface wlp3s0 inet dhcp
	wpa-ssid <MentionYouSSIDHere>
	wpa-psk <MentionYourWifiPasswordhere>
```
- Reboot and login as `root` user and execute below commands
```
    apt-get update && apt-get upgrade -y
    apt-get install sudo
    visudo
```
- Add this line in sudoers for full access

   `username ALL=(ALL:ALL) ALL`
- Exit from `root` and login as normal user

## How to install
```
   sudo apt-get install git
   git clone https://github.com/prakash2033/PARBS.git
   cd PARBS/
   sudo sh install.sh
```
## Screenshots
![Alt text](/screenshots/pic-selected-191103-2335-40.png?raw=true "Home Screen with Lain wallpaper")
![Alt text](/screenshots/pic-selected-191103-2336-25.png?raw=true "neofetch and chromium browser")
![Alt text](/screenshots/pic-selected-191103-2337-30.png?raw=true "urxvt terminal")
![Alt text](/screenshots/pic-selected-191103-2337-58.png?raw=true "ranger file manager and htop")

## YouTube Channel
[Prakash Vishwakarma YouTube Channel](https://www.youtube.com/channel/UCdSXkHPv39bDKaBk5TOReNg?view_as=subscriber)

## Credits
The i3-gaps-deb script is from here
https://github.com/maestrogerardo/i3-gaps-deb
