local M = {}

function M.setup()
  -- local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.9.1"
  -- local this_os = vim.loop.os_uname().sysname

  -- The path in windows is different
  -- The liblldb extension is .so for linux and .dylib for macOS
  -- liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")

  local rt = require "rust-tools"

  local opts = {
    -- ... other configs

    server = {
      on_attach = function(_, bufnr)
        -- Hover actions
        vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        -- vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
      end,
    },
    dap = {
      adapter = require("rust-tools.dap").get_codelldb_adapter(
        "/Users/liam.ng/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb",
        "/Users/liam.ng/.local/share/nvim/mason/packages/codelldb/extension/lldb/lib/liblldb.dylib"
      ),
    },
  }

  -- Normal setup
  rt.setup(opts)
end

return M
