# !/bin/bash

run_line () {
	LINE=$((LINE+1));
	command=${@:1:$#-1};
	will_exit=${!#};
	$command || ($will_exit && { echo $LINE; exit 1; });
};

LINE=10;
run_line sudo add-apt-repository -y ppa:regolith-linux/release false;
run_line sudo apt-get -y upgrade true;
run_line sudo update-grub true;
run_line sudo apt-get -y install libcurl4-openssl-dev curl libsqlite3-dev apt-transport-https curl true;
run_line (wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -) true;
run_line (sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list') true;
run_line curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - true;
run_line echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list true;
run_line sudo apt-get update true;
run_line sudo apt-get install -y net-tools atom dkms chromium-browser dolphin-emu virtualbox variety dmenu filelight exfalso pinta rhythmbox wireshark texmaker golang-go audacity snapd steam gimp sound-juicer brave-browser conky deluge adb fastboot libreoffice python3-pip lm-sensors nmap exiftool true;
run_line apm install platformio-ide-terminal true;
run_line pip3 install i3ipc true;
run_line sudo snap install --classic dmd true;
run_line sudo snap install --classic dub true;
run_line sudo snap install --classic android-studio true;
run_line sudo snap install --classic intellij-idea-ultimate true;
run_line sudo snap install --classic goland true;
run_line sudo snap install --classic code true;
run_line sudo snap install --classic spotify true;
run_line sudo snap install pulseaudio true;
run_line sudo snap install signal-desktop true;
run_line sed -i 's/  editor:/  editor:\n    showInvisibles: true\n    softWrap: true/g' ~/.atom/config.cson true;
run_line wget https://github.com/altdesktop/playerctl/releases/download/v2.1.1/playerctl-2.1.1_amd64.deb -O ~/Downloads/playerctl.deb true;
run_line wget https://zoom.us/client/latest/zoom_amd64.deb -O ~/Downloads/zoom.deb true;
run_line sudo dpkg -i ~/Downloads/zoom.deb ~/Downloads/playerctl.deb true;
run_line rm ~/Downloads/zoom.deb ~/Downloads/playerctl.deb true;
run_line export PATH="/snap/bin:$PATH" true;
run_line cd ~ false;
run_line git clone https://github.com/skilion/onedrive.git false;
run_line cd ~/onedrive true;
run_line make true;
run_line sudo make install true;
run_line cd ~ true;
run_line git clone https://github.com/marguerite/linux-bing-wallpaper false;
run_line cd ~/linux-bing-wallpaper true;
run_line go build bing-wallpaper.go true;
run_line sudo cp ~/linux-bing-wallpaper/bing-wallpaper /usr/bin/ true;
run_line cd ~ true;
run_line mkdir ~/.config/onedrive false;
run_line touch ~/.config/onedrive/sync_list true;
run_line echo -e "Documents\nMusic" > ~/.config/onedrive/sync_list true;
run_line mkdir ~/.config/autostart false;
run_line (printf '#!/usr/bin/env bash\ndbus-monitor --session "type='"'"'signal'"'"',interface='"'"'org.gnome.ScreenSaver'"'"',member='"'"'ActiveChanged'"'"'" | while read line ; do\n  if [ x"$(echo "$line" | grep '"'"'boolean false'"'"')" != x ] ; then\n      bing-wallpaper\n  fi\ndone\n' > ~/.config/autostart/bing-daily-wallpaper.sh) true;
run_line (printf '[Desktop Entry]\nType=Application\nExec=/home/bencarlisle15/.config/autostart/bing-daily-wallpaper.sh\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Fix Mouse\nName=Fix Mouse\nComment[en_US]=\nComment=\n' > ~/.config/autostart/bing.desktop) true;
run_line (printf '[Desktop Entry]\nType=Application\nExec=xrandr --output eDP-1 --scale 0.9999x0.9999\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Fix Mouse\nName=Fix Mouse\nComment[en_US]=\nComment=\n' > ~/.config/autostart/fix_mouse.desktop) true;
run_line (printf '[Desktop Entry]\nType=Application\nExec=gnome-terminal -e "onedrive --syncdir ~"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Onedrive\nName=Onedrive\nComment[en_US]=\nComment=\n' > ~/.config/autostart/onedrive.desktop) true;
run_line (printf '[Desktop Entry]\nType=Application\nExec=xmodmap -e "keysym 65514 = Menu"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Change Alt to Menu\nName=Change Alt to Menu\nComment[en_US]=\nComment=\n' > ~/.config/autostart/xmodmap.desktop) true;
run_line printf '%s\n%s\n' "echo Hello Friend" "$(cat ~/.bashrc)" > ~/.bashrc true;
run_line printf '%s\n%s\n' "bind '\"\e[1;5D\" backward-word'" "bind '\"\e[1;5C\" forward-word'" >> ~/.bashrc true;
run_line gsettings set org.gnome.desktop.screensaver picture-uri /usr/share/backgrounds/El_Haouaria_by_Nusi_Nusi.jpg true;
run_line brave-browser http://www.displaylink.com/downloads/file?id=1369 https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd?hl=en-US https://chrome.google.com/webstore/detail/shortkeys-custom-keyboard/logpjaacgmcbpdkdchjiaagddngobkck?hl=en-US & false;
run_line mkdir ~/.config/regolith/i3/ false;
run_line mkdir ~/.config/regolith/i3xrocks/ false;
run_line wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1mtDOhNdl-QjLqHyEUiX3ScZpYXmaDcLx' -O ~/configs.zip true;
run_line  unzip -o ~/configs.zip true;
run_line  rm ~/configs.zip true;
run_line  cp ~/configs/i3/config ~/.config/regolith/i3/config true;
run_line  cp ~/configs/i3xrocks/config ~/.config/regolith/i3xrocks/config true;
run_line  sudo cp ~/configs/i3extras/* /usr/share/i3xrocks/ true;
run_line echo "set enable-keypad on" >> ~/.inputrc false;
run_line sudo apt-get update true;
run_line sudo apt-get -y upgrade true;
run_line sudo apt-get -y dist-upgrade true;
run_line sudo apt-get -y autoremove true;
run_line echo 'ENTER THE COMMAND: onedrive --resync --syncdir ~' true;
run_line echo "SUCESS" true;