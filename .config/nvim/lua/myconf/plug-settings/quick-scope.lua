-- config for quick-scope (https://github.com/unblevable/quick-scope)
if not vim.g.vscode then
    -- config for quick-scope if neovim is not used in vscode
    vim.cmd([[highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline]])
    vim.cmd([[highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline]])
else
    -- config if quick-scope is used with vscode
    -- see: https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins
    vim.cmd([[highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline]])
    vim.cmd([[highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline]])
end
