-- stole a lot from https://github.com/numToStr/dotfiles/blob/master/neovim/.config/nvim/lua/numToStr/settings.lua

local g = vim.g
local o = vim.o

-- general
o.mouse = "a"
o.syntax = "enable"

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 750

-- Better UI
o.number = true
o.relativenumber = true
o.cursorline = true

-- editing stuff
o.expandtab = true
o.smarttab = true
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
