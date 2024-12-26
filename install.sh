#!/bin/bash

# check if we are a codespace
if [ "$CODESPACES" = "true" ]; then
    export DOTFILES="/workspaces/.codespaces/.persistedshare/dotfiles"
else
    export DOTFILES="$HOME/dotfiles"
fi

sudo apt update
sudo apt upgrade -y
