local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "java",
    "go",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "org",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  -- disable_netrw = true,
  -- hijack_netrw = true,
  -- prefer_startup_root = false,
  -- sync_root_with_cwd = true,
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  actions = {
    change_dir = {
      enable = true,
      global = true
    },
  }
}

return M
