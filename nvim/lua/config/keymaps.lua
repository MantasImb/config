-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- vim.keymap.set("n", "<leader>as", function()
--   require("copilot.suggestion").toggle_auto_trigger()
--   print("Suggestions toggled.")
-- end, { noremap = true })
