#!/bin/bash

# fastfetch
sudo apt install fastfetch -y
echo -e "#!/bin/bash\n/usr/bin/fastfetch" > /etc/update-motd.d/02-fastfetch
sudo chmod 755 /etc/update-motd.d/02-fastfetch

# disable some motd
cd /etc/update-motd.d && sudo chmod 200 00-header 10-help-text 50-motd-news 91-contract-ua-esm-status

