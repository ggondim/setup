#!/bin/bash

# volta
echo -e "\n\nVOLTA ======================================\n"
curl https://get.volta.sh | bash

source ~/.profile

echo -e "\n\nBUN & PNPM ======================================\n"
volta install node
volta install bun
volta install pnpm

echo "VOLTA_FEATURE_PNPM=1" >> ~/.profile

source ~/.profile
