local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]

local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  --
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "NvChad/ui",
    opts = overrides.tabufline,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  -- Install a plugin

  -- TODO: Think about a solution
  {
    "Shatur/neovim-session-manager",
    event = "VimEnter",
    config = function()
      require "custom.configs.session"
    end,
  },

  {
    "AckslD/nvim-neoclip.lua",
    event = "BufReadPost",
    requires = {
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("neoclip").setup()
    end,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- {
  --   "https://github.com/christoomey/vim-tmux-navigator",
  --   lazy = false,
  -- },

  {
    "echasnovski/mini.nvim",
    event = "BufReadPost",
    config = function()
      require("mini.bracketed").setup()
      require("mini.splitjoin").setup()
    end,
  },

  {
    "mrjones2014/legendary.nvim",
    event = "VimEnter",
    config = function()
      require "custom.configs.keymaps"
    end,
  },

  {
    "dstein64/vim-startuptime",
    event = "VimEnter",
  },

  {
    "szw/vim-maximizer",
    event = "VimEnter",
  },
  {
    "tpope/vim-surround",
    event = "BufReadPost",
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmd = "ToggleTerm",
    keys = [[<C-\>]],
    config = function()
      require("toggleterm").setup {
        open_mapping = [[<c-\>]],
        direction = "float",
        shell = "/Users/liam.ng/.cargo/bin/nu",
      }
    end,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },

  -- UI
  {
    "stevearc/dressing.nvim",
    lazy = false,
  },
  {
    "folke/noice.nvim",
    lazy = false,
    config = function()
      require "custom.configs.noice"
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      "hrsh7th/nvim-cmp",
    },
  },

  {
    "rcarriga/nvim-notify",
    event = "VimEnter",
  },
  -- {
  --   {
  --     "karb94/neoscroll.nvim",
  --     event = "BufReadPost",
  --     config = function()
  --       require "custom.configs.neoscroll"
  --     end,
  --   },
  -- },
  {
    "folke/trouble.nvim",
    event = "BufReadPost",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  },

  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    event = "BufReadPost",
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- Editing
  {
    "anuvyklack/hydra.nvim",
    event = "BufReadPost",
    config = function()
      require "custom.configs.hydra"
    end,
  },
  {
    "ggandor/leap.nvim",
    event = "BufReadPost",
    config = function()
      require "custom.configs.leap"
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufReadPost",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "AckslD/muren.nvim",
    event = "BufReadPost",
    config = function()
      require("muren").setup()
    end,
  },
  {
    "ThePrimeagen/harpoon",
    event = "BufReadPost",
  },
  {
    "mattn/emmet-vim",
    event = "InsertEnter",
    after = "nvim-cmp",
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },
  {
    "mbbill/undotree",
    event = "BufReadPost",
  },
  {
    -- Basic usage:
    --
    -- select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
    -- create cursors vertically with Ctrl-Down/Ctrl-Up
    -- select one character at a time with Shift-Arrows
    -- press n/N to get next/previous occurrence
    -- press [/] to select next/previous cursor
    -- press q to skip current and get next occurrence
    -- press Q to remove current cursor/selection
    -- start insert mode with i,a,I,A
    -- Two main modes:
    --
    -- in cursor mode commands work as they would in normal mode
    -- in extend mode commands work as they would in visual mode
    -- press Tab to switch between «cursor» and «extend» mode
    "mg979/vim-visual-multi",
    event = "BufReadPost",
  },
  {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end,
  },

  -- NOTES
  {
    "nvim-neorg/neorg",
    cmd = "Neorg",
    ft = "norg",
    config = function()
      require "custom.configs.neorg"
    end,
  },
  {
    "nvim-neorg/neorg-telescope",
    event = "BufEnter",
  },
  {
    "akinsho/org-bullets.nvim",
    ft = { "norg", "md", "org" },
  },
  {
    "lukas-reineke/headlines.nvim",
    ft = { "norg", "md", "org" },
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require("zen-mode").setup()
    end,
  },

  -- LSP
  -- TODO: Fix lspsaga
  {
    "glepnir/lspsaga.nvim",
    event = "BufReadPost",
    config = function()
      require "custom.configs.lspsaga"
    end,
    -- cmd = "Lspsaga",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },

  -- {
  --   "rmagatti/goto-preview",
  --   event = "BufReadPost",
  --   config = function()
  --     require("goto-preview").setup {
  --       default_mappings = false,
  --     }
  --   end,
  -- },

  {
    "ray-x/guihua.lua",
    run = "cd lua/fzy && make",
    lazy = false,
  },

  -- {
  --   "liam-ngy/navigator.lua",
  --   requires = {
  --     { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
  --     { "neovim/nvim-lspconfig" },
  --   },
  --   config = function()
  --     require "custom.configs.navigator"
  --   end,
  --   lazy = false,
  -- },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require "custom.configs.treesitter-context"
    end,
    event = "BufReadPost",
  },

  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufReadPost",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   event = "BufReadPost",
  --   config = function()
  --     require("symbols-outline").setup()
  --   end,
  -- },

  {
    "elixir-tools/elixir-tools.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      --  TODO: Move to its config file
      local elixir = require "elixir"
      local elixirls = require "elixir.elixirls"
      local path_to_elixirls = vim.fn.expand "/Users/liam.ng/.elixir-ls/release/language_server.sh"

      elixir.setup {
        credo = {},
        elixirls = {
          enabled = true,
          cmd = path_to_elixirls,
          settings = elixirls.settings {
            dialyzerEnabled = false,
            enableTestLenses = false,
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Testing
  {
    "jfpedroza/neotest-elixir",
    event = "VimEnter",
  },
  {
    "https://github.com/rouge8/neotest-rust",
    event = "VimEnter",
  },
  {
    "nvim-neotest/neotest",
    event = "BufReadPost",
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-elixir",
        },

        require "neotest-rust" {
          args = { "--no-capture" },
          dap_adapter = "lldb",
        },
      }
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "jfpedroza/neotest-elixir",
    },
  },

  {
    "simrat39/rust-tools.nvim",
    event = "BufReadPost",
    config = function()
      require "custom.configs.rust-tools"
    end,
  },

  {
    "saecki/crates.nvim",
    event = "BufRead Cargo.toml",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("crates").setup()
    end,
  },

  -- Debug NVIM DAP
  {
    "mfussenegger/nvim-dap",
    event = "BufReadPost",
    requires = {
      -- "Pocco81/DAPInstall.nvim",
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "nvim-telescope/telescope-dap.nvim",
      { "jbyuki/one-small-step-for-vimkind", module = "osv" },
    },
    config = function()
      require("custom.configs.dap").setup()
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "BufReadPost",
    requires = { "mfussenegger/nvim-dap" },
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    event = "BufReadPost",
    requires = { "mfussenegger/nvim-dap" },
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    event = "BufReadPost",
    requires = { "mfussenegger/nvim-dap" },
  },

  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.chatgpt"
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },

  -- TODO: Fix it
  -- {
  --   "github/copilot.vim",
  --   -- init = function()
  --     -- vim.g.copilot_no_tab_map = true
  --     -- vim.api.nvim_set_keymap("i", "<C-Enter>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  --   -- end,
  --   lazy = false,
  --   cmd = "Copilot",
  -- },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("custom.configs.copilot")
  --   end,
  -- },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
  --
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },

  -- Uncomment if you want to re-enable which-key
  {
    "folke/which-key.nvim",
    event = "VimEnter",
    enabled = true,
  },
}

return plugins
