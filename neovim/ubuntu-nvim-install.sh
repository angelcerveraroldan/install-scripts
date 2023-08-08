#!/bin/bash

# Install snap if it isnt already installed
if ! command -v snap &> /dev/null
then
  echo "Installing snapd"
  sudo apt-get install snapd
fi

# Once we know snap is installed, use it to install nvim
echo "Installing neovim"
sudo snap install --beta nvim --classic

