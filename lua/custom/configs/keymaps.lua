local silent_opts = { silent = true }
require("legendary").setup {
  keymaps = {
    -- Legendary
    -- { "<C-/>", ":Legendary<cr>", description = "Open Legendary panep", opts = silent_opts },
    { ",a", "ggVG", description = "Select all" },
    { ",cp", ":lua require('telescope').extensions.neoclip.default()<cr>", description = "Open Clipboard" },
    {
      "<leader><Enter>",
      ":call append(line('.'), '')<cr>",
      description = "Insert new line and stay in Normal mode",
      opts = silent_opts,
    },
    {
      "<leader><S-Enter>",
      ":call append(line('.')-1, '')<cr>",
      description = "Insert above new line and stay in Normal mode",
      opts = silent_opts,
    },
    {
      "<leader>bd",
      ":%bd|e#|bd#<cr>|'\"",
      description = "Remove all buffers and jump back to my original cursor position.",
    },
    -- TODO: define new keybindings if needed
    -- {
    --   itemgroup = "Tab management",
    --   keymaps = {
    --     { ",tn", ":tabnew<CR>", description = "Open new tab", opts = silent_opts },
    --     { ",tx", ":tabclose<CR>", description = "Close current tab", opts = silent_opts },
    --     { ",t]", ":tabn<CR>", description = "Go to next tab", opts = silent_opts },
    --     { ",t[", ":tabp<CR>", description = "Go to previous tab", opts = silent_opts },
    --   },
    -- },

    -- Illuminate
    -- alias alt + ]lsp
    { "‘", ":lua require('illuminate').goto_next_reference()<cr>", "Move to next reference", opts = silent_opts },
    -- alias alt + [
    { "“", ":lua require('illuminate').goto_prev_reference()<cr>", "Move to previous reference", opts = silent_opts },
    -- alias alt + v
    { "√", ":lua require('illuminate').textobj_select()<cr>", "Select current txtobjct", opts = silent_opts },

    -- Terminal
    {
      "<leader>Tt",
      ":ToggleTerm direction=tab<CR>",
      description = "Open terminal in new tab",
      opts = silent_opts,
    },
    {
      "<leader>Tf",
      ":ToggleTerm direction=float<CR>",
      description = "Open terminal in float",
      opts = silent_opts,
    },

    -- Window management
    { "<C-w>m", ":MaximizerToggle<cr>", description = "Maximize current window", opts = silent_opts },
    { ",w", ":close<cr>", description = "Close window", opts = silent_opts },

    -- Nerd tree
    { "<leader>0", ":NvimTreeToggle<CR>", description = "Toggle Nerdtree", opts = { silent = true } },
    { "<leader>1", ":NvimTreeFindFile<CR>", description = "Find file in Nerdtree", opts = { silent = true } },
    { "<leader>)", ":NvimTreeFocus<CR>", description = "Focus Nerdtree", opts = { silent = true } },
    {
      "<leader>J",
      ":NvimTreeFindFile<cr>",
      description = "Highlight current file in Nerdtree",
      opts = { silent = true },
    },

    -- Navbuddy
    { "<leader>n", ":Navbuddy<CR>", description = "Navigate with Navbuddy", opts = { silent = true } },
    -- Notification
    {
      ",h",
      ":lua require('notify').dismiss()<cr>",
      description = "Dismiss current notifications",
      opts = silent_opts,
    },

    {
      itemgroup = "Telescope",
      keymaps = {
        { "<leader>ff", ":Telescope find_files<cr>", description = "Find files", opts = silent_opts },
        {
          "<leader>fs",
          ":Telescope live_grep<cr>",
          description = "Find string in current working directory",
          opts = silent_opts,
        },
        {
          "<leader>fc",
          ":Telescope grep_string<cr>",
          description = "Find string under cursor in current working directory",
          opts = silent_opts,
        },
        {
          "<leader>fb",
          ":Telescope buffers<cr>",
          description = "List open buffers in currrent instance",
          opts = silent_opts,
        },
        { "<leader>fp", ":Telescope builtin<cr>", description = "List built in fuctions", opts = silent_opts },
        {
          "<leader>fo",
          ":lua require'telescope.builtin'.oldfiles{}<cr>",
          description = "List old files",
          opts = silent_opts,
        },
        { "<leader>fh", ":Telescope help_tags<cr>", description = "Vim help", opts = silent_opts },
        { "<leader>fk", ":Telescope keymaps<cr>", description = "Keymaps", opts = silent_opts },
        { "<leader>fd", ":Telescope diagnostics<cr>", description = "Show diagnostics", opts = silent_opts },
        { "<leader>fO", ":Telescope vim_options<cr>", description = "Vim Options", opts = silent_opts },
        {
          "<leader>f/",
          ":Telescope current_buffer_fuzzy_find<cr>",
          description = "Fuzzy find in buffer",
          opts = silent_opts,
        },
        { "<leader>f?", ":Telescope search_history<cr>", description = "", opts = silent_opts },
        { "<leader>f;", ":Telescope command_history<cr>", description = "Command History", opts = silent_opts },
        {
          "<leader>fC",
          ":Telescope commands<cr>",
          description = "execute command History",
          opts = silent_opts,
        },
      },
    },

    -- {
    --   itemgroup = "Startify",
    --   keymaps = {
    --     { "<leader>Sl", ":SLoad<cr>", description = "Load session", opts = silent_opts },
    --     { "<leader>Sw", ":SSave<cr>", description = "Save session", opts = silent_opts },
    --     { "<leader>Sd", ":SDelete<cr>", description = "Delete session", opts = silent_opts },
    --     { "<leader>Sq", ":SClose<cr>", description = "Close session", opts = silent_opts },
    --   },
    -- },

    {
      itemgroup = "Spectre",
      description = "Spectre is tool to find and replace string in working directory",
      opts = silent_opts,
      keymaps = {
        { ",fr", ":Spectre<CR>", description = "Find and replace", opts = silent_opts },
        {
          ",fw",
          "<cmd>lua require('spectre').open_visual({select_word=true})<cr>",
          description = "Find selected word",
          opts = silent_opts,
        },
        {
          ",ff",
          ":lua require('spectre').open_file_search()<cr>",
          description = "Find and replace in file",
          opts = silent_opts,
        },
      },
    },

    -- TODO-comment
    {
      "<leader>fT",
      ":TodoTelescope keywords=TODO,FIX,NOTE,BUG<cr>",
      description = "Find TODO comments",
      opts = silent_opts,
    },

    -- Lazy git
    { "<leader>lg", ":LazyGit<CR>", description = "Open Lazy Git", opts = silent_opts },

    -- Github Copilot
    {
      "<C-,>",
      { i = "<esc>:Copilot panel<CR>" },
      description = "Open Github Copilot panel",
      opts = silent_opts,
    },

    -- LSP
    -- {
    --   itemgroup = "LSP",
    --   keymaps = {
    --
    --     {
    --       "gR",
    --       ":Lspsagl lsp_finder<CR>",
    --       desgription = "Show definition and references",
    --       opts = silent_opts,
    --     },
    --     {
    --       "gd",
    --       ":Lspsaga peek_definition<CR>",
    --       description = "Peek definition and make edits in window",
    --       opts = silent_opts,
    --     },
    --     { "gD", ":Lspsaga goto_definition<CR>", description = "Go to definition", opts = silent_opts },
    --     {
    --       "gi",
    --       ":lua vim.lsp.buf.implementation()<CR>",
    --       description = "Go to implementation",
    --       opts = silent_opts,
    --     },
    --     { "<leader>ca", ":Lspsaga code_action<CR>", description = "Run code action", opts = silent_opts },
    --     { "grn", ":Lspsaga rename<CR>", description = "Smart rename action", opts = silent_opts },
    --     {
    --       "<leader>D",
    --       ":Lspsaga show_line_diagnostics<CR>",
    --       description = "Show line diagnostics",
    --       opts = silent_opts,
    --     },
    --     {
    --       "<leader>d",
    --       ":Lspsaga show_cursor_diagnostics<CR>",
    --       description = "Show cursor diagnostics",
    --       opts = silent_opts,
    --     },
    --     {
    --       "[d",
    --       ":Lspsaga diagnostic_jump_prev<CR>",
    --       description = "Jump to previous diagnostic",
    --       opts = silent_opts,
    --     },
    --     {
    --       "]d",
    --       ":Lspsaga diagnostic_jump_next<CR>",
    --       description = "Jump to next diagnostic",
    --       opts = silent_opts,
    --     },
    --     {
    --       "gI",
    --       ":Lspsaga hover_doc<CR>",
    --       description = "Show documentation under cursor",
    --       opts = silent_opts,
    --     },
    --     { "<leader>so", ":SymbolsOutline<CR>", description = "Toggle Symbols Outline", opts = silent_opts },
    --     {
    --       "K",
    --       ":lua require('lsp_signature').toggle_float_win()<cr>",
    --       description = "Toggle signature",
    --       opts = silent_opts,
    --     },
    --   },
    -- },

    {
      "gpd",
      "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
      description = "Preview definition",
      opts = silent_opts,
    },
    {
      "gr",
      "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
      description = "Preview references",
      opts = silent_opts,
    },
    {
      "gpt",
      "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
      description = "Preview Type definition",
      opts = silent_opts,
    },
    {
      "gpi",
      "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
      description = "Preview implementation",
      opts = silent_opts,
    },
    {
      "gP",
      "<cmd>lua require('goto-preview').close_all_win()<CR>",
      description = "Close all preview windows",
      opts = silent_opts,
    },

    -- { "<leader>so", ":SymbolsOutline<CR>", description = "Toggle Symbols Outline", opts = silent_opts },
    -- Harpoon
    {
      itemgroup = "Harpoon",
      keymaps = {

        {
          "<leader>ha",
          ":lua require('harpoon.mark').add_file()<cr>",
          description = "Add file to harpoon",
          opts = silent_opts,
        },
        {
          "<leader>ht",
          ":lua require('harpoon.ui').toggle_quick_menu()<cr>",
          description = "Toggle Harpoon menu",
          opts = silent_opts,
        },
        {
          "<leader>h]",
          ":lua require('harpoon.ui').nav_next()<cr>",
          description = "Navigate next",
          opts = silent_opts,
        },
        {
          "<leader>h[",
          ":lua require('harpoon.ui').nav_prev()<cr>",
          description = "Navigate previous",
          opts = silent_opts,
        },
      },
    },

    -- Neotest
    {
      itemgroup = "NeoTest",
      keymaps = {
        {
          "<leader>tr",
          ":lua require('neotest').run.run()<cr>",
          description = "Run nearest test",
          opts = silent_opts,
        },
        {
          "<leader>tl",
          ":lua require('neotest').run.run_last()<cr>",
          description = "Run last test",
          opts = silent_opts,
        },
        {
          "<leader>tx",
          ":lua require('neotest').run.stop()<cr>",
          description = "Stop testing",
          opts = silent_opts,
        },
        {
          "<leader>to",
          ":lua require('neotest').output.open()<cr>",
          description = "Output",
          opts = silent_opts,
        },
        {
          "<leader>tO",
          ":lua require('neotest').output_panel.toggle()<cr>",
          description = " Test Output panel",
          opts = silent_opts,
        },
        {
          "<leader>ts",
          ":lua require('neotest').summary.toggle()<cr>",
          description = "Test Summary",
          opts = silent_opts,
        },
        -- { "<leader>Td", ":h neotest.diagnostic<cr>", description = "Test diagnostic" },
        -- { "<leader>Ts", ":h neotest.status<cr>", description = "Test status sign" },
        {
          "<leader>tf",
          ":lua require('neotest').run.run(vim.fn.expand('%')) <cr>",
          description = "Run current file",
          opts = silent_opts,
        },
      },
    },
    {
      itemgroup = "Trouble",
      keymaps = {
        { "<leader>xx", ":TroubleToggle<cr>", description = "Toggle Trouble", opts = silent_opts },
        {
          "<leader>xw",
          ":TroubleToggle lsp_workspace_diagnostics<cr>",
          description = "Toggle workspace diagnostics",
          opts = silent_opts,
        },
        {
          "<leader>xd",
          ":TroubleToggle document_diagnostics<cr>",
          description = "Toggle document diagnostics",
          opts = silent_opts,
        },
        { "<leader>xl", ":TroubleToggle loclist<cr>", description = "Toggle loclist", opts = silent_opts },
        { "<leader>xq", ":TroubleToggle quickfix<cr>", description = "Toggle quickfix", opts = silent_opts },
        {
          "<leader>xR",
          ":TroubleToggle lsp_references<cr>",
          description = "Toggle references",
          opts = silent_opts,
        },
      },
    },
    {
      itemgroup = "DAP",
      keymaps = {

        { "<leader>dR", ":lua require'dap'.run_to_cursor()<cr>", description = "Run to cursor", opts = silent_opts },
        {
          "<leader>dE",
          ":lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>",
          description = "Evaluate Input",
          opts = silent_opts,
        },
        {
          "<leader>dC",
          ":lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>",
          description = "Conditional Breakpoint",
          opts = silent_opts,
        },
        { "<leader>dU", "<cmd>lua require'dapui'.toggle()<cr>", description = "Toggle UI", opts = silent_opts },
        { "<leader>db", ":lua require'dap'.step_back()<cr>", description = "Step Back", opts = silent_opts },
        { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", description = "Continue", opts = silent_opts },
        { "<leader>dd", "<cmd>lua require'dap'.disconnect()<cr>", description = "Disconnect", opts = silent_opts },
        { "<leader>de", "<cmd>lua require'dapui'.eval()<cr>", description = "Evaluate", opts = silent_opts },
        { "<leader>dg", "<cmd>lua require'dap'.session()<cr>", description = "Get Session", opts = silent_opts },
        {
          "<leader>dh",
          "<cmd>lua require'dap.ui.widgets'.hover()<cr>",
          description = "Hover Variables",
          opts = silent_opts,
        },
        { "<leader>dS", "<cmd>lua require'dap.ui.widgets'.scopes()<cr>", description = "Scopes", opts = silent_opts },
        { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", description = "Step Into", opts = silent_opts },
        { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", description = "Step Over", opts = silent_opts },
        { "<leader>dp", "<cmd>lua require'dap'.pause.toggle()<cr>", description = "Pause", opts = silent_opts },
        { "<leader>dq", "<cmd>lua require'dap'.close()<cr>", "Quit", opts = silent_opts },
        { "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", description = "Toggle Repl", opts = silent_opts },
        { "<leader>ds", "<cmd>lua require'dap'.continue()<cr>", description = "Start", opts = silent_opts },
        {
          "<leader>dt",
          "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
          description = "Toggle Breakpoint",
          opts = silent_opts,
        },
        { "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", description = "Terminate", opts = silent_opts },
        { "<leader>du", "<cmd>lua require'dap'.step_out()<cr>", description = "Step Out", opts = silent_opts },
        {
          "<leader>dv",
          "<cmd>lua local widgets = require 'dap.ui.widgets'; local sidebar = widgets.sidebar(widgets.scopes); sidebar.open()<cr>",
          description = "Sidebar",
          opts = silent_opts,
        },
      },
    },
  },
}

--   local keymap_v = {
--     d = {
--       name = "Debug",
--       e = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
--     },
--   }
--   whichkey.register(keymap_v, {
--     mode = "v",
--     prefix = "<leader>",
--     buffer = nil,
--     silent = true,
--     noremap = true,
--     nowait = false,
--   })
-- end
