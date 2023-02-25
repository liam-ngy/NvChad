local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "clangd", "elixirls" }
for _, lsp in ipairs(servers) do
  if lsp == "elixirls" then
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
  local path_to_elixirls = vim.fn.expand "/Users/liam.ng/Projects/elixir-ls/release/language_server.sh"

  lspconfig.elixirls.setup {
    cmd = { path_to_elixirls },
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "eex", "heex", "ex", "exs" },
    settings = {
      elixirls = {
        -- i choose to disable dialyzer for personal reasons, but
        -- i would suggest you also disable it unless you are well
        -- aquainted with dialzyer and know how to use it.
        dialyzerenabled = false,
        -- i also choose to turn off the auto dep fetching feature.
        -- it often get's into a weird state that requires deleting
        -- the .elixir_ls directory and restarting your editor.
        fetchdeps = false,
      },
    },
  }
end
