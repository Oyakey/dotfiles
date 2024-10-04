return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "gdscript",
        "php",
        "c_sharp",
      },
    },
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  -- {
  --   "tpope/vim-sleuth",
  --   lazy = false,
  -- },

  {
    "nmac427/guess-indent.nvim",
    lazy = false,
    config = function()
      require("guess-indent").setup {}
    end,
  },
}
