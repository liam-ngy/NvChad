local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "emmet_ls" }
-- local servers = { "html", "cssls", "tsserver", --[["elixirls"]], "emmet_ls" }
for _, lsp in ipairs(servers) do
  -- if lsp == "elixirls" then
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  -- end
  -- local path_to_elixirls = vim.fn.expand "/Users/liam.ng/Projects/elixir-ls/release/language_server.sh"
  --
  -- lspconfig.elixirls.setup {
  --   cmd = { path_to_elixirls },
  --   capabilities = capabilities,
  --   on_attach = on_attach,
  --   filetypes = { "eex", "heex", "ex", "exs" },
  --   settings = {
  --     elixirls = {
  --       -- i choose to disable dialyzer for personal reasons, but
  --       -- i would suggest you also disable it unless you are well
  --       -- aquainted with dialzyer and know how to use it.
  --       dialyzerenabled = false,
  --       -- i also choose to turn off the auto dep fetching feature.
  --       -- it often get's into a weird state that requires deleting
  --       -- the .elixir_ls directory and restarting your editor.
  --       fetchdeps = false,
  --     },
  --   },
  -- }
end

local path_to_sourcekit =
  "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp"

lspconfig.sourcekit.setup {
  cmd = { path_to_sourcekit },
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig["emmet_ls"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte", "heex", "eex" },
}

-- Rust

-- local rt = require "rust-tools"
--
-- rt.setup {
--   server = {
--     on_attach = function(_, bufnr)
--       -- Hover actions
--       vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
--       -- Code action groups
--       vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
--     end,
--   },
-- }
