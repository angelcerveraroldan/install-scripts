#!/bin/bash

CURRENT_PATH=$(realpath ./)

echo "Installing nerd fonts"
bash $CURRENT_PATH/nerd-font.sh

echo "Installing neovim"
bash $CURRENT_PATH/neovim/install.sh

echo "Setting up astrovim"

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

