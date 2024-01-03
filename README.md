# My Dotfiles
My personal collection of dotfile

## Setup 
1. `echo ".git-bare-dotfiles" >> .gitignore`
2. `git clone --bare git@github.com:jostaub/dotfiles.git $HOME/.git-bare-dotfiles`
3. `git --git-dir=$HOME/.git-bare-dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no`
4. `git --git-dir=$HOME/.git-bare-dotfiles/ --work-tree=$HOME checkout`

## Install base progarmms
Run `./setup/ubuntu_setup.sh`
