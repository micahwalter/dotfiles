#!/bin/bash

# check if we are a codespace
if [ "$CODESPACE" = "true" ]; then
    export DOTFILES="/workspaces/.codespaces/.persistedshare/dotfiles"
else
    export DOTFILES="$HOME/codespace/dotfiles"
fi

sudo apt update
sudo apt upgrade -y

# install neovim
sudo apt install neovim -y
mkdir -p $HOME/.config/nvim
ln -s $DOTFILES/nvim/init.vim $HOME/.config/nvim/init.vim

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