#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="stable"

if [ "$1" == "" ]; then
    VERSION=$FALLBACK_VERSION
else
    VERSION="v$1"
fi

SOURCE=https://github.com/neovim/neovim/releases/download/$VERSION/nvim.appimage
TARGET=/usr/local/bin/nvim

# install curl
sudo apt install -yqqq curl

# install neovim
sudo curl -L $SOURCE -o $TARGET

sudo chmod +x $TARGET

echo
nvim --version | head -1

echo
echo '"nvim" is now on the path'
