#!/bin/bash

sudo apt update
sudo apt upgrade -y

# install neovim
sudo apt install neovim -y

# install aws tools
sudo apt install awscli -y

# install go tools
echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' | sudo tee /etc/apt/sources.list.d/goreleaser.list
sudo apt update
sudo apt install goreleaser -y