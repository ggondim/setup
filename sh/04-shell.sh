#!/bin/bash

echo -e "\n\nLSD BTOP SUPERFILE FASTFETCH ======================================\n"
sudo apt install lsd btop fastfetch -y

bash -c "$(curl -sLo- https://superfile.netlify.app/install.sh)"

cd /etc/update-motd.d && sudo chmod 200 00-header 10-help-text 50-motd-news 91-contract-ua-esm-status
sudo echo "fastfetch" > /etc/update-motd.d/02-fastfetch
sudo chmod +x /etc/update-motd.d/02-fastfetch
