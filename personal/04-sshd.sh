#!/bin/bash

echo -e "\n\nSSH SERVER =============================================================\n"

sudo cp ./files/sshd_config /etc/ssh/sshd_config
sudo sed -i 's/USERNAME/'$USER'/g' /etc/ssh/sshd_config
sudo chmod 644 /etc/ssh/sshd_config
sudo systemctl restart ssh
