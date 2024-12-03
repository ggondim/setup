#!/bin/bash

# enpass
echo "deb https://apt.enpass.io/  stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo tee /etc/apt/trusted.gpg.d/enpass.asc
sudo apt update
sudo apt install enpass -y

# parsec
curl -o https://builds.parsec.app/package/parsec-linux.deb
sudo dpkg -i parsec-linux.deb
sudo apt install -f -y

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install

# code-insiders
curl -o https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64
sudo dpkg -i download?build=insider&os=linux-deb-x64
sudo apt install -f -y

# surfshark
curl -f https://downloads.surfshark.com/linux/debian-install.sh --output surfshark-install.sh #gets the installation script
cat surfshark-install.sh #shows script's content
sh surfshark-install.sh #installs surfshark