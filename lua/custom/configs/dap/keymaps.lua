local M = {}

M.dap = {
  n = {
    ["<leader>dv"] = {
      function()
        local widgets = require "dap.ui.widgets"; local sidebar = widgets.sidebar(widgets.scopes); sidebar.open()
      end,
    },
  },
}

return M
