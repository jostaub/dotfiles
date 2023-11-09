return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { '<leader>ft', ':Neotree toggle<cr>', {silent = true, desc = 'Toggle Neotree' }},
    },
    opts = {
        enable_git_status = true,
        filesystem = {
          follow_current_file = { enabled = true },
          filtered_items = {
            visible = true,
            show_hidden_count = false,
            hide_gitignored = true,
            hide_hidden = true,
            hide_dotfiles = true,
          },
        },
        window = {
          -- mapping space in neotree to none because its my leader key
          mappings = {
            ["<space>"] = "none",
          },
        },
    },
  },
  {'akinsho/bufferline.nvim', tag = "v4.4.0", dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {}
    }
  }

}
