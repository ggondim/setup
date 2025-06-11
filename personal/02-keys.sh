#!/bin/bash

if ! command -v gpg &> /dev/null; then
    sudo apt update && sudo apt install -y gnupg
fi

BASE_URL="https://raw.githubusercontent.com/ggondim/keys/main"
ID_RSA_GPG="id_rsa.gpg"
ID_RSA_PUB_GPG="id_rsa.pub.gpg"

mkdir -p ~/.ssh && cd ~/.ssh

curl -o ~/.ssh/$ID_RSA_GPG $BASE_URL/$ID_RSA_GPG
curl -o ~/.ssh/$ID_RSA_PUB_GPG $BASE_URL/$ID_RSA_PUB_GPG

gpg --yes --decrypt-files ~/.ssh/id_rsa.gpg ~/.ssh/id_rsa.pub.gpg

chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
echo "" >> ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
