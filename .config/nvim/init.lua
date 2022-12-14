-- NeoVim lua config
require('settings')
require('keybinds')

if vim.g.vscode then
 require('vscode')
end
