#!/bin/bash

# zsh setup
sudo apt instal zsh -y
chsh -s $(which zsh)

# install starship
curl -sS https://starship.rs/install.sh | sh
