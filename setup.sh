# !/bin/bash

run_line () {
	LINE=$((LINE+1));
	command=${@:1:$#-1}
	will_exit=${!#}
	$command || ($will_exit && { echo $LINE; exit 1; });
}

LINE=10;
run_line sudo add-apt-repository -y ppa:regolith-linux/release false;
run_line sudo apt-get upgrade -y true;
run_line sudo update-grub true;
run_line sudo apt-get install -y libcurl4-openssl-dev curl true;
run_line sudo apt-get install -y libsqlite3-dev true;
run_line sudo apt-get install -y regolith-desktop net-tools atom dkms chromium-browser dolphin-emu virtualbox variety dmenu filelight exfalso pinta rhythmbox wireshark texmaker golang-go audacity snapd steam gimp sound-juicer true;
run_line apm install platformio-ide-terminal true;
run_line sudo snap install --classic dmd true;
run_line sudo snap install --classic dub true;
run_line sudo snap install --classic android-studio true;
run_line sudo snap install --classic goland true;
run_line sudo snap install --classic spotify true;
run_line export PATH="/snap/bin:$PATH" true;
run_line cd ~ false;
run_line git clone https://github.com/skilion/onedrive.git false;
run_line cd onedrive true;
run_line make true;
run_line sudo make install true;
run_line cd ~ true;
run_line mkdir .config/onedrive false;
run_line touch .config/onedrive/sync_list true;
run_line echo -e "Documents\nMusic" > .config/onedrive/sync_list true;
run_line mkdir ~/.config/autostart || echo "Directory Already Created" true;
run_line printf '[Desktop Entry]\nType=Application\nExec=gnome-terminal -e "onedrive --syncdir ~"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Onedrive\nName=Onedrive\nComment[en_US]=\nComment=\n' > ~/.config/autostart/onedrive.desktop true;
run_line printf '[Desktop Entry]\nType=Application\nExec=xmodmap -e "keysym 65514 = Menu"\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=Change Alt to Menu\nName=Change Alt to Menu\nComment[en_US]=\nComment=\n' > ~/.config/autostart/xmodmap.desktop true;
run_line printf '%s\n%s\n' "echo Hello Friend" "$(cat ~/.bashrc)" > ~/.bashrc true;
run_line firefox http://www.displaylink.com/downloads/file?id=1123 & false;
run_line mkdir ~/.config/regolith/i3/  false;
run_line mkdir ~/.config/regolith/i3xrocks/ false;
run_line cp ~/Dotfiles/i3/config ~/.config/regolith/i3/ false;
run_line cp ~/Dotfiles/i3xrocks/config ~/.config/regolith/i3xrocks/ false;
run_line sudo cp ~/Dotfiles/i3extras/* /usr/share/i3xrocks/ false;
run_line echo "set enable-keypad on" >> ~/.inputrc false;
run_line sudo apt-get update true;
run_line sudo apt-get upgrade -y true;
run_line echo 'ENTER THE COMMAND: onedrive --resync --syncdir ~' true;
run_line echo "SUCESS" true;