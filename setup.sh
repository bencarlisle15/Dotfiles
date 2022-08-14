#!/bin/bash
LINE=2;
LINE=$((LINE+1));sudo apt update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt -y upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));wget -qO - https://regolith-desktop.org/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.org/release-ubuntu-jammy-amd64 jammy main" | sudo tee /etc/apt/sources.list.d/regolith.list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get install -y regolith-desktop x11-xserver-utils feh cron i3xrocks-battery i3xrocks-memory i3xrocks-openvpn i3xrocks-volume i3xrocks-wifi || { echo $LINE ; exit 1; };
LINE=$((LINE+1));git clone https://github.com/bencarlisle15/dynamic-wallpaper.git
LINE=$((LINE+1));cd dynamic-wallpaper && ./install.sh && cd .. || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.config/regolith2
LINE=$((LINE+1));echo i3-wm.mod: Mod1 > ~/.config/regolith2/Xresources || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo i3-wm.alt: Mod4 >> ~/.config/regolith2/Xresources || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo regolith.wallpaper.options: zoom >> ~/.config/regolith2/Xresources || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo regolith.lockscreen.wallpaper.options: zoom >> ~/.config/regolith2/Xresources || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo regolith.wallpaper.file: /usr/share/dynamic-wallpaper/images/lake/23.jpg >> ~/.config/regolith2/Xresources || { echo $LINE ; exit 1; };
LINE=$((LINE+1));/usr/bin/dwall -s lake|| { echo $LINE ; exit 1; };
LINE=$((LINE+1));(crontab -l 2>/dev/null; echo "0 * * * * env TERM=$TERM PATH=$PATH DISPLAY=$DISPLAY DESKTOP_SESSION=$DESKTOP_SESSION DBUS_SESSION_BUS_ADDRESS=\"$DBUS_SESSION_BUS_ADDRESS\" /usr/bin/dwall -s lake") | crontab - || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "SUCCESS";
