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
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "php", "json",
        "yaml", "toml", "javascript", "typescript",
        "bash", "python", "c", "cpp", "rust",
        "java", "go", "lua", "ruby", "svelte",
  		},
  	},
  },
  -- lightspeed.nvim
  {
    'ggandor/lightspeed.nvim',
    event = 'VimEnter',
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    -- version = "å*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end
  },
}
