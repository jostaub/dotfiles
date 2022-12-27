require('myconf.settings')
require('myconf.keybinds')

-- Plugins
require('myconf.packer')
require('myconf.plug-settings')

-- load vscode specific settings if needed
if vim.g.vscode then
    require('myconf.vscode')
end
