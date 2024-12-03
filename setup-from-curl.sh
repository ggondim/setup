#!/bin/bash

# check if git is installed
if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
fi

git clone https://github.com/ggondim/setup.git ~/setup

cd ~/setup

chmod +x ./setup.sh

bash ./setup.sh