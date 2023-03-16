-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type HLTable
M.override = {
  CursorLine = {
    bg = "black2",
  },
  Comment = {
    italic = true,
  },
  -- NvimTree = {
  --   bg = "#070B12",
  -- },
  -- NvimTreeNormal = {
  --   bg = "#070B12",
  -- },
  -- Normal = {
  --   bg = "#0E1017",
  -- },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
