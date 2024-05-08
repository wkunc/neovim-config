-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
    -- fg = '#72737A'
  },
  Folded = {
    fg = '#868991',
    bg = '#393B40'
  }
  -- OrgTSComment = {
  --   fg = ''
  -- }
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
  -- CursorLineSign = {
  --   fg = '#72737A'
  -- }
}

return M
