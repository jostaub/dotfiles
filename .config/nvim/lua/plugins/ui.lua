return {
  -- NOTE: Plugins can also be configured to run Lua code when they are loaded.
  --
  -- This is often very useful to both group configuration, as well as handle
  -- lazy loading plugins that don't need to be loaded immediately at startup.
  --
  -- For example, in the following configuration, we use:
  --  event = 'VimEnter'
  --
  -- which loads which-key before all the UI elements are loaded. Events can be
  -- normal autocommands events (`:help autocmd-events`).
  --
  -- Then, because we use the `config` key, the configuration only runs
  -- after the plugin has been loaded:
  --  config = function() ... end
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
      local api = require 'nvim-tree.api'
      vim.keymap.set('n', '<leader>ti', function()
        api.tree.toggle { focus = false }
      end, { desc = '[T]oggle F[i]letree' })
    end,
  },

  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').register {
        ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
        ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
        ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
        ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
      }
      -- visual mode
      require('which-key').register({
        ['<leader>h'] = { 'Git [H]unk' },
      }, { mode = 'v' })
    end,
  },

  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      scope = {
        enabled = false,
      },
    },
  },

  -- { -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --   'folke/tokyonight.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   init = function()
  --     -- Load the colorscheme here.
  --     -- Like many other themes, this one has different styles, and you could load
  --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --     vim.cmd.colorscheme 'tokyonight-night'
  --
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  -- {
  --   'ellisonleao/gruvbox.nvim',
  --   priority = 1000,
  --   config = true,
  --   opts = {
  --     italic = {
  --       strings = true,
  --       emphasis = true,
  --       comments = true,
  --       operators = true,
  --       folds = false,
  --     },
  --     contrast = '',
  --   },
  --   init = function()
  --     vim.o.background = 'dark'
  --     vim.cmd [[colorscheme gruvbox]]
  --   end,
  -- },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = true,
    opts = {
      keywordStyle = { italic = false },
      -- colors = {
      --   palette = {
      --     boatYellow2 = '#DCA561',
      --   },
      -- },
      overrides = function(colors) -- add/modify highlights
        local theme = colors.theme
        return {
          ['@keyword.operator'] = { fg = colors.palette.autumnYellow },
          ['@variable.builtin'] = { italic = false },
        }
      end,
    },
    init = function()
      vim.cmd [[colorscheme kanagawa]]
    end,
  },
  -- {
  --   'EdenEast/nightfox.nvim',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd [[colorscheme nightfox]]
  --   end,
  -- },
  -- {
  --   'sainnhe/gruvbox-material',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.gruvbox_material_enable_italic = false
  --     vim.g.gruvbox_material_background = 'hard'
  --     vim.g.gruvbox_material_foreground = 'material'
  --     vim.cmd.colorscheme 'gruvbox-material'
  --   end,
  -- },
  -- {
  --   'luisiacc/gruvbox-baby',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd [[colorscheme gruvbox-baby]]
  --   end,
  -- },

  { -- Tabstyle tabs for buffers
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {},
  },
}
