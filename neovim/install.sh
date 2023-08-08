#!/bin/bash

#
# Install neovim 
#
# apt install is not suitable, as version is outdated
#

if command -v nvim &> /dev/null
then 
  echo "Early exit: neovim is already installed"
  exit 0
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Running neovim ubuntu installation"
  bash ./ubuntu-nvim-install.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "MacOs installation"
  bash ./mac-nvim-install.sh
else 
  echo "Error: Operating system not supprted yet!"
fi

