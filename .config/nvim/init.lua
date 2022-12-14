-- NeoVim lua config
require('settings')
require('keybinds')

-- Plugins
local Plug = vim.fn['plug#']
vim.call("plug#begin")

if vim.g.vscode then
    Plug("asvetliakov/vim-easymotion", {as = "vsc-easymotion"})
else
    Plug("easymotion/vim-easymotion")
end

vim.call("plug#end")

-- load vscode specific settings
if vim.g.vscode then 
    require('vscode')
end
