#!/bin/bash

# Check if brew is installed
if ! command -v brew &> /dev/null
then
  echo "Installing neovim from releases"
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
  tar xzf nvim-macos.tar.gz
  ./nvim-macos/bin/nvim
else
  echo "Installing neovim from brew"
  brew install neovim
fi



