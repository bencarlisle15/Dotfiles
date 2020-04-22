#!/bin/bash
LINE=2;
LINE=$((LINE+1));sudo add-apt-repository -y ppa:regolith-linux/release || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo update-grub || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y install libcurl4-openssl-dev curl libsqlite3-dev apt-transport-https curl || { echo $LINE ; exit 1; };
LINE=$((LINE+1));curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get install -y regolith-desktop gnome-tweaks net-tools atom dkms chromium dolphin-emu virtualbox variety dmenu filelight exfalso pinta rhythmbox wireshark texmaker golang-go audacity snapd steam gimp sound-juicer brave-browser conky deluge adb fastboot libreoffice python3-pip lm-sensors nmap exiftool libegl1-mesa libgl1-mesa-glx libxcb-xtest0 || { echo $LINE ; exit 1; };
LINE=$((LINE+1));apm install platformio-ide-terminal || { echo $LINE ; exit 1; };
LINE=$((LINE+1));pip3 install i3ipc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic dmd || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic dub || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic android-studio || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic goland || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic sublime-text || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic spotify || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install pulseaudio || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install signal-desktop || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.atom;
LINE=$((LINE+1));touch ~/.atom/config.cson;
LINE=$((LINE+1));sed -i 's/  editor:/  editor:\n    showInvisibles: true\n    softWrap: true/g' ~/.atom/config.cson || { echo $LINE ; exit 1; };
LINE=$((LINE+1));wget https://github.com/altdesktop/playerctl/releases/download/v2.1.1/playerctl-2.1.1_amd64.deb -O ~/Downloads/playerctl.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));wget https://zoom.us/client/latest/zoom_amd64.deb -O ~/Downloads/zoom.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo dpkg -i ~/Downloads/zoom.deb ~/Downloads/playerctl.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));rm ~/Downloads/zoom.deb ~/Downloads/playerctl.deb || { echo $LINE ; exit 1; };
LINE=$((LINE+1));export PATH="/snap/bin:$PATH" || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));git clone https://github.com/skilion/onedrive.git;
LINE=$((LINE+1));cd ~/onedrive || { echo $LINE ; exit 1; };
LINE=$((LINE+1));make || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo make install || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));git clone https://github.com/marguerite/linux-bing-wallpaper;
LINE=$((LINE+1));cd ~/linux-bing-wallpaper || { echo $LINE ; exit 1; };
LINE=$((LINE+1));go build bing-wallpaper.go || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo cp ~/linux-bing-wallpaper/bing-wallpaper /usr/bin/ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.config/onedrive;
LINE=$((LINE+1));touch ~/.config/onedrive/sync_list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo -e "Documents\nMusic" > ~/.config/onedrive/sync_list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.config/autostart;
LINE=$((LINE+1));mv ~/Dotfiles/.Xmodmap ~/;
LINE=$((LINE+1));crontab -l | { cat; echo "0 * * * * bing-wallpaper"; } | crontab - || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cp ~/Dotfiles/autostart/* ~/.config/autostart/ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));chmod +x ~/.config/autostart/bing.sh || { echo $LINE ; exit 1; };
LINE=$((LINE+1));printf '%s\n%s\n' "echo Hello Friend" "$(cat ~/.bashrc)" > ~/.bashrc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));printf '%s\n%s\n' "bind '\"\e[1;5D\" backward-word'" "bind '\"\e[1;5C\" forward-word'" >> ~/.bashrc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));xdg-settings set default-web-browser brave-browser.desktop || { echo $LINE ; exit 1; };
LINE=$((LINE+1));gsettings set org.gnome.desktop.screensaver picture-uri file:///usr/share/backgrounds/pop/ahmadreza-sajadi-10140-edit.jpg || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir ~/.config/regolith/;
LINE=$((LINE+1));mkdir ~/.config/regolith/i3/;
LINE=$((LINE+1));sudo mkdir /usr/share/i3xrocks/;
LINE=$((LINE+1));sudo cp -r /etc/regolith/i3xrocks/ .config/regolith/;
LINE=$((LINE+1));cp ~/Dotfiles/i3/config ~/.config/regolith/i3/config || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo cp ~/Dotfiles/i3xrocks/config ~/.config/regolith/i3xrocks/conf.d/02-setup || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo cp ~/Dotfiles/i3extras/* /usr/share/i3xrocks/ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "set enable-keypad on" >> ~/.inputrc;
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y dist-upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get -y autoremove || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "SUCCESS";
LINE=$((LINE+1));nohup gnome-terminal -e 'onedrive --resync --syncdir ~' > /dev/null 2>&1&
LINE=$((LINE+1));nohup brave-browser http://www.displaylink.com/downloads/file?id=1369 https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=en-US > /dev/null 2>&1&