-- wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Quit neovim
map('n', '<C-Q>', '<CMD>q<CR>')

-- move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- lets cursor stay in place when appending live with J
map("n", "J", "mzJ`z")

-- keep cursor in the middle when half page jumping
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- keep search terms in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
