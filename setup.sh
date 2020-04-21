#!/bin/bash
LINE=2;
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo update-grub || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y install libcurl4-openssl-dev curl libsqlite3-dev apt-transport-https curl || { echo $LINE ; exit 1; };
LINE=$((LINE+1));curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get install -y net-tools atom dkms chromium-browser dolphin-emu virtualbox variety dmenu filelight exfalso pinta rhythmbox wireshark texmaker golang-go audacity snapd steam gimp sound-juicer brave-browser conky deluge adb fastboot libreoffice python3-pip lm-sensors nmap exiftool || { echo $LINE ; exit 1; };
LINE=$((LINE+1));apm install platformio-ide-terminal || { echo $LINE ; exit 1; };
LINE=$((LINE+1));pip3 install i3ipc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic dmd || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic dub || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic android-studio || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic intellij-idea-ultimate || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic goland || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic code || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic spotify || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install pulseaudio || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install signal-desktop || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sed -i 's/  editor:/  editor:\n    showInvisibles: true\n    softWrap: true/g' ~/.atom/config.cson || { echo $LINE ; exit 1; };
LINE=$((LINE+1));wget https://github.com/altdesktop/playerctl/releases/download/v2.1.1/playerctl-2.1.1_amd64.deb -O ~/Downloads/playerctl.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));wget https://zoom.us/client/latest/zoom_amd64.deb -O ~/Downloads/zoom.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo dpkg -i ~/Downloads/zoom.deb ~/Downloads/playerctl.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));rm ~/Downloads/zoom.deb ~/Downloads/playerctl.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));export PATH="/snap/bin:$PATH" || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));git clone https://github.com/skilion/onedrive.git
LINE=$((LINE+1));cd ~/onedrive || { echo $LINE ; exit 1; };
LINE=$((LINE+1));make || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo make install || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));git clone https://github.com/marguerite/linux-bing-wallpaper
LINE=$((LINE+1));cd ~/linux-bing-wallpaper || { echo $LINE ; exit 1; };
LINE=$((LINE+1));go build bing-wallpaper.go || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo cp ~/linux-bing-wallpaper/bing-wallpaper /usr/bin/ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.config/onedrive
LINE=$((LINE+1));touch ~/.config/onedrive/sync_list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo -e "Documents\nMusic" > ~/.config/onedrive/sync_list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.config/autostart
LINE=$((LINE+1));(printf '#!/usr/bin/env bash\ndbus-monitor --session "type='"'"'signal'"'"',interface='"'"'org.gnome.ScreenSaver'"'"',member='"'"'ActiveChanged'"'"'" | while read line ; do\n  if [ x"$(echo "$line" | grep '"'"'boolean false'"'"')" != x ] ; then\n      bing-wallpaper\n  fi\ndone\n' > ~/.config/autostart/bing-daily-wallpaper.sh) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(printf '[Desktop Entry]\nType=Application\nExec=/home/bencarlisle15/.config/autostart/bing-daily-wallpaper.sh\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Fix Mouse\nName=Fix Mouse\nComment[en_US]=\nComment=\n' > ~/.config/autostart/bing.desktop) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(printf '[Desktop Entry]\nType=Application\nExec=xrandr --output eDP-1 --scale 0.9999x0.9999\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Fix Mouse\nName=Fix Mouse\nComment[en_US]=\nComment=\n' > ~/.config/autostart/fix_mouse.desktop) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(printf '[Desktop Entry]\nType=Application\nExec=gnome-terminal -e "onedrive --syncdir ~"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Onedrive\nName=Onedrive\nComment[en_US]=\nComment=\n' > ~/.config/autostart/onedrive.desktop) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(printf '[Desktop Entry]\nType=Application\nExec=xmodmap -e "keysym 65514 = Menu"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Change Alt to Menu\nName=Change Alt to Menu\nComment[en_US]=\nComment=\n' > ~/.config/autostart/xmodmap.desktop) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));printf '%s\n%s\n' "echo Hello Friend" "$(cat ~/.bashrc)" > ~/.bashrc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));printf '%s\n%s\n' "bind '\"\e[1;5D\" backward-word'" "bind '\"\e[1;5C\" forward-word'" >> ~/.bashrc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));gsettings set org.gnome.desktop.screensaver picture-uri /usr/share/backgrounds/El_Haouaria_by_Nusi_Nusi.jpg || { echo $LINE ; exit 1; };
LINE=$((LINE+1));brave-browser http://www.displaylink.com/downloads/file?id=1369 https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=en-US https://chrome.google.com/webstore/detail/shortkeys-custom-keyboard/logpjaacgmcbpdkdchjiaagddngobkck?hl=en-US &
LINE=$((LINE+1));mkdir ~/.config/regolith/i3/
LINE=$((LINE+1));mkdir ~/.config/regolith/i3xrocks/
LINE=$((LINE+1));wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1mtDOhNdl-QjLqHyEUiX3ScZpYXmaDcLx' -O ~/configs.zip || { echo $LINE ; exit 1; }
LINE=$((LINE+1)); unzip -o ~/configs.zip || { echo $LINE ; exit 1; }
LINE=$((LINE+1)); rm ~/configs.zip || { echo $LINE ; exit 1; }
LINE=$((LINE+1)); cp ~/configs/i3/config ~/.config/regolith/i3/config || { echo $LINE ; exit 1; }
LINE=$((LINE+1)); cp ~/configs/i3xrocks/config ~/.config/regolith/i3xrocks/config || { echo $LINE ; exit 1; }
LINE=$((LINE+1)); sudo cp ~/configs/i3extras/* /usr/share/i3xrocks/ || { echo $LINE ; exit 1; }
LINE=$((LINE+1));echo "set enable-keypad on" >> ~/.inputrc
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y dist-upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y autoremove || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'ENTER THE COMMAND: onedrive --resync --syncdir ~' || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "SUCESS";