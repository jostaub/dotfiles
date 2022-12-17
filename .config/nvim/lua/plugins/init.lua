-- load/ install all plugins
-- vim-plug plugin manager (https://github.com/junegunn/vim-plug)

local Plug = vim.fn['plug#']
vim.call("plug#begin")

if not vim.g.vscode then
    -- plugins if neovim is not used in vscode
    -- Plug("easymotion/vim-easymotion")

else
    -- plugins if neovim is used in vscode
    -- Plug("asvetliakov/vim-easymotion", {as = "vsc-easymotion"})
end

-- Plugins that are always loaded
Plug("justinmk/vim-sneak")
require('conf-vim-sneak')


vim.call("plug#end")
