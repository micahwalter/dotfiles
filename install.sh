#!/bin/bash

# check if we are a codespace
if [ "$CODESPACES" = "true" ]; then
    export DOTFILES="/workspaces/.codespaces/.persistedshare/dotfiles"
else
    export DOTFILES="$HOME/dotfiles"
fi

sudo apt update
sudo apt upgrade -y

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo rm nvim-linux64.tar.gz
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
mkdir -p $HOME/.config/nvim
ln -s $DOTFILES/.config/nvim/init.lua $HOME/.config/nvim/init.lua

# install tmux
sudo apt install tmux -y

# install aws cli tool
wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
unzip awscli-exe-linux-x86_64.zip
sudo ./aws/install
sudo rm awscli-exe-linux-x86_64.zip
sudo rm -r aws

# install aws sam cli tool
wget "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip"
unzip aws-sam-cli-linux-x86_64.zip -d aws-sam
sudo ./aws-sam/install
sudo rm aws-sam-cli-linux-x86_64.zip
sudo rm -r aws-sam

# install go tools
echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' | sudo tee /etc/apt/sources.list.d/goreleaser.list
sudo apt update
sudo apt install goreleaser -y
