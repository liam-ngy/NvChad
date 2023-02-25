require("leap").add_default_mappings(true)
-- The below settings make Leap's highlighting a bit closer to what you've been
-- used to in Lightspeed.
vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
vim.api.nvim_set_hl(0, "LeapLabelPrimary", { fg = "red", bold = true, nocombine = true })
vim.api.nvim_set_hl(0, "LeapLabelSecondary", { fg = "blue", bold = true, nocombine = true })
vim.api.nvim_set_hl(0, "LeapMatch", {
  fg = "white", -- for light themes, set to 'black' or similar
  bold = true,
  nocombine = true,
})
-- keep old 'x' behaviour in visual mode
vim.keymap.del({ "x", "o" }, "x")
vim.keymap.del({ "x", "o" }, "X")
require("leap").opts.highlight_unlabeled_phase_one_targets = true
