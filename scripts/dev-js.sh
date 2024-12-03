#!/bin/bash

# volta
curl https://get.volta.sh | bash

volta install bun
volta install pnpm

echo "VOLTA_FEATURE_PNPM=1" >> ~/.profile

