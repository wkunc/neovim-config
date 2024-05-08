---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- ["<leader>"] = { "<cmd> Vista <CR>", "打开structure", opts = { nowait = true } },
    -- ["<leader>"] = { ":Vista", "打开structure" },
  },
}

-- more keybinds!
M.nvimtree = {

  n = {
    -- toggle
    -- ALT/MEAT 1 = open
    ["<leader>1"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>s"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.aerial = {
  -- plugin = true,
  n = {
    -- toggle
    -- ALT/MEAT 1 = open
    -- ["<D-1>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    -- ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    -- vim.keymap.set("n", "<leader>s", "<cmd>AerialToggle!<CR>", { buffer = bufnr })
    ["<leader>7"] = { "<cmd>AerialToggle!<CR>", "打开outline", { buffer = true }},
    -- focus
    -- ["<leader>s"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.table = {
  n = {
    ["<leader>tm"] = { "<cmd>TableModeToggle<CR>", "打开table mode", { buffer = true }},
  },
}

return M
