#!/bin/bash

echo -e "\n\nLSD BTOP SUPERFILE ======================================\n"
sudo apt install lsd btop -y

bash -c "$(curl -sLo- https://superfile.netlify.app/install.sh)"

