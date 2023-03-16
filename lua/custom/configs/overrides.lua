local M = {}

--- Check `:h nvim-treesitter` for more information about the parser
--- If you install some treesitter-related plugins, make sure to check out their docs too
--- For the list of available parsers, you can find the list at
--- [Supported Languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages)
M.treesitter = {
  textsubjects = {
    enable = true,
    prev_selection = ",", -- (Optional) keymap to select the previous selection
    keymaps = {
      ["."] = "textsubjects-smart",
      [";"] = "textsubjects-container-outer",
      ["i;"] = "textsubjects-container-inner",
    },
  },

  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = {
    enable = true,
    filetypes = {
      "html",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
      "yaml",
      "heex",
      "eex",
    },
  },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
    "ruby",
    "elixir",
    "heex",
    "eex",
    "swift",
  },
  -- auto install above language parsers
  auto_install = true,
}

M.mason = {
  -- list of servers for mason to install
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "emmet_ls",
    "elixirls",
    "graphql",
    "jsonls",
    "marksman", -- markdown
    "jedi_language_server", -- python
    -- "solargraph",
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
}

--- git support in nvimtree
--- Read `:h nvim-tree-setup` for more information

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.toggle { focus = false, find_file = true }
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

M.nvimtree = {
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
}

M.tabufline = {
  tabufline = {
    enabled = false,
  },
}

local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

M.cmp = {
  mapping = {
    ["<CR>"] = cmp.mapping.confirm {
      select = true,
    },
  },
}

return M
