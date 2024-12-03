#!/bin/bash

echo "\n\nBUILD-ESSENTIAL CURL WGET GIT VIM ======================================\n"
sudo apt update
sudo apt install build-essential curl wget git vim -y

git config --global init.defaultBranch main
git config --global push.followTags true
