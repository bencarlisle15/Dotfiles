# !/bin/bash
LINE=2;
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'Y' | sudo apt-get upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo update-grub || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list') || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'Y' | sudo apt-get install libcurl4-openssl-dev curl || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'Y' | sudo apt-get install libsqlite3-dev || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'Y' | sudo apt-get install net-tools atom dkms chromium-browser dolphin-emu virtualbox variety dmenu filelight exfalso pinta rhythmbox wireshark texmaker golang-go audacity snapd steam gimp sound-juicer || { echo $LINE ; exit 1; };
LINE=$((LINE+1));apm install platformio-ide-terminal || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic dmd || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic dub || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic android-studio || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic intellij-idea-ultimate || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic goland || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic clion || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo snap install --classic spotify || { echo $LINE ; exit 1; };
LINE=$((LINE+1));export PATH="/snap/bin:$PATH" || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~
LINE=$((LINE+1));git clone https://github.com/skilion/onedrive.git || echo "Repo Already Cloned" || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd onedrive || { echo $LINE ; exit 1; };
LINE=$((LINE+1));make || { echo $LINE ; exit 1; };
LINE=$((LINE+1));sudo make install || { echo $LINE ; exit 1; };
LINE=$((LINE+1));cd ~ || { echo $LINE ; exit 1; };
LINE=$((LINE+1));mkdir .config/onedrive || echo "Directory Already Created" || { echo $LINE ; exit 1; };
LINE=$((LINE+1));touch .config/onedrive/sync_list || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo -e "Documents\nMusic" > .config/onedrive/sync_list || { echo $LINE ; exit 1; };
LINE=$((LINE+1)); mkdir ~/.config/autostart || echo "Directory Already Created" || { echo $LINE ; exit 1; };
LINE=$((LINE+1)); (printf '[Desktop Entry]\nType=Application\nExec=gnome-terminal -e "onedrive --syncdir ~"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Onedrive\nName=Onedrive\nComment[en_US]=\nComment=\n' > ~/.config/autostart/onedrive.desktop) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));(printf '[Desktop Entry]\nType=Application\nExec=xmodmap -e "keysym 65514 = Menu"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Change Alt to Menu\nName=Change Alt to Menu\nComment[en_US]=\nComment=\n' > ~/.config/autostart/xmodmap.desktop) || { echo $LINE ; exit 1; };
LINE=$((LINE+1));printf '%s\n%s\n' "echo Hello Friend" "$(cat ~/.bashrc)" > ~/.bashrc || { echo $LINE ; exit 1; };
LINE=$((LINE+1));firefox http://www.displaylink.com/downloads/file?id=1123 &
LINE=$((LINE+1));mkdir ~/.config/regolith/i3/ 
LINE=$((LINE+1));mkdir ~/.config/regolith/i3xrocks/
LINE=$((LINE+1));wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1RbJpN52HaA-5D4xsQZ4fwSIA6hluJ2Cb' -O ~/.config/regolith/i3/config || { echo $LINE ; exit 1; }
LINE=$((LINE+1));wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1F5T25zDWa2RkrffOD9ayx-e4ZvqQ1P2y' -O ~/.config/regolith/i3xrocks/config || { echo $LINE ; exit 1; }
LINE=$((LINE+1));echo "set enable-keypad on" >> ~/.inputrc
LINE=$((LINE+1));sudo apt-get update || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'Y' | sudo apt-get upgrade || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo 'ENTER THE COMMAND: onedrive --resync --syncdir ~' || { echo $LINE ; exit 1; };
LINE=$((LINE+1));echo "SUCESS"
