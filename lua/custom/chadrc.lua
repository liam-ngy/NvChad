---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "kanagawa", "one_light" },
  theme = "kanagawa",
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = false,
  cmp = {
    border_color = "red",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.lazy_nvim = {}

return M
