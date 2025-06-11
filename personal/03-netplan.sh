#!/bin/bash

echo -e "\n\nNETPLAN =============================================================\n"
sudo apt install -y net-tools
sudo cp ./files/50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml
sudo chown root:root /etc/netplan/50-cloud-init.yaml
sudo chmod 644 /etc/netplan/50-cloud-init.yaml
sudo netplan apply