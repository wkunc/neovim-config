local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "lewis6991/gitsigns.nvim",
    lazy = false
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "vim-scripts/ReplaceWithRegister",
    lazy = false
  },
  {
    "kylechui/nvim-surround",
    version = "*",   -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    ft = {"org", "norg", "md"},
    config = true, -- or `opts = {}`
  },

  {
    "dhruvasagar/vim-table-mode",
    -- ft = "md"
    lazy = false
  },
  -- {
  --   'jbyuki/venn.nvim',
  --   lazy=false
  -- },
  -- 
  -- 输入法自动切换
  {
    'keaising/im-select.nvim',
    lazy = false,
    config = function()
      require("im_select").setup({})
    end,
  },

  -- 高亮显示被复制的部分
  {
    'machakann/vim-highlightedyank',
    lazy = false
  },
  {
    'kevinhwang91/nvim-ufo',
    lazy = false,
    dependencies = {
      'kevinhwang91/promise-async'
    },
    config = function()
      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { 'treesitter', 'indent' }
        end
      })
    end
  },
  -- 文件结构插件
  {
    'stevearc/aerial.nvim',
    config = function()
      require("aerial").setup({
      })
    end,

    opts = {},
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    lazy = false
  },
  -- 翻译插件
  {
    "potamides/pantran.nvim",
    config = function()
      require("pantran").setup {
        -- Default engine to use for translation. To list valid engine names run
        -- `:lua =vim.tbl_keys(require("pantran.engines"))`.
        default_engine = "google",
        -- Configuration for individual engines goes here.
        engines = {
        },
      }
    end,
    lazy = false
  }
  -- {
  --   'mrjones2014/smart-splits.nvim',
  --   lazy = false
  -- },
  -- {
  --   'ahmedkhalf/project.nvim',
  --   lazy = false,
  --   config = function()
  --     require("project_nvim").setup {
  --     }
  --   end,
  -- }


}

return plugins
