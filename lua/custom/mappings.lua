---@type MappingsTable
local M = {}

-- add this table only when you want to disable default keys
-- TODO: Move t nvchad to , instead of lead key
M.disabled = {
  n = {
    ["q:"] = "",
    ["<C-n>"] = "",
    ["<leader>e"] = "",
    ["<C-s>"] = "",
    ["gcc"] = "",
    ["<leader>ra"] = "",
    ["<leader>n"] = "",
    ["<leader>cm"] = "",
    ["K"] = "",
    ["<leader>gt"] = "",
    ["<leader>th"] = "",
    ["<leader>tt"] = "",
    ["<leader>pt"] = "",
    ["<leader>tk"] = "",
    -- Git signs
    ["<leader>rh"] = "",
    ["<leader>ph"] = "",
    ["<leader>gb"] = "",
    ["<leader>td"] = "",

    -- Terminal
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    -- lsp

    ["gr"] = "",
    -- LSP disabling
    -- ["gD"] = "",
    -- ["gd"] = "",
    -- ["gi"] = "",
    -- ["gr"] = "",
    -- ["gR"] = "",
    -- ["<leader>ca"] = "",
    -- ["<leader>D"] = "",
    -- ["<leader>d"] = "",
    -- ["[d"] = "",
    -- ["]d"] = "",
    -- ["gI"] = "",
    -- ["K"] = "",
    -- ["<leader>so"] = "",
  },
}

M.general = {
  i = {
    ["<C-a>"] = { "<ESC>^i", "beginning of line" },
  },
  n = {},
}

M.lspconfig = {
  n = {
    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP Rename",
    },
    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "lsp hover",
    },
  },
}

-- more keybinds!
--
M.nvimtree = {
  n = {
    -- toggle
    ["<leader>0"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<leader>)"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

M.telescope = {
  n = {
    ["<leader>ft"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
    [",ct"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
  },
}

M.nvterm = {
  n = {
    -- toggle in normal mode
    ["<,tf>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<,th>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    [",tv>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },

    -- new

    [",tH"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    [",tV"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },
  },
}

return M
