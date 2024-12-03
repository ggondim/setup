#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install build-essential curl wget git vim -y

git config --global init.defaultBranch main
git config --global push.followTags true
