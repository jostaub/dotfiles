-- NeoVim lua config
require('settings')
require('keybinds')

-- Plugins
local Plug = vim.fn['plug#']
vim.call("plug#begin")

if not vim.g.vscode then
    -- plugins if neovim is not used in vscode
    Plug("easymotion/vim-easymotion")
else
    -- plugins if neovim is used in vscode
    Plug("asvetliakov/vim-easymotion", {as = "vsc-easymotion"})
end

vim.call("plug#end")

-- load vscode specific settings if needed
if vim.g.vscode then 
    require('vscode')
end
