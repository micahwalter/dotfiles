#!/bin/bash

sudo apt update
sudo apt upgrade -y

# install neovim
sudo apt install neovim -y

# install tmux
sudo apt install tmux -y

# install aws cli tool
wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
unzip awscli-exe-linux-x86_64.zip
sudo ./aws/install

# install aws sam cli tool
wget "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip"
unzip aws-sam-cli-linux-x86_64.zip -d aws-sam
sudo ./aws-sam/install

# install go tools
echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' | sudo tee /etc/apt/sources.list.d/goreleaser.list
sudo apt update
sudo apt install goreleaser -y