#!/bin/bash

# volta
echo "\n\nVOLTA ======================================\n"
curl https://get.volta.sh | bash

echo "\n\nBUN & PNPM ======================================\n"
volta install bun
volta install pnpm

echo "VOLTA_FEATURE_PNPM=1" >> ~/.profile

