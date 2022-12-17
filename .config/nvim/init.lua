-- NeoVim lua config
require('settings')
require('keybinds')

-- Plugins
require('plugins')

-- load vscode specific settings if needed
if vim.g.vscode then 
    require('vscode')
end
