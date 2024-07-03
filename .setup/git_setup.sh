#!/usr/bin/env bash

git clone --bare git@github.com:jostaub/dotfiles.git $HOME/.git-bare-dotfiles
git --git-dir=$HOME/.git-bare-dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/.git-bare-dotfiles/ --work-tree=$HOME checkout
