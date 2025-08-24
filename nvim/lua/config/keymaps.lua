-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

vim.keymap.set("n", "<leader>ch", function()
  local file = vim.api.nvim_buf_get_name(0)
  if file ~= "" then
    vim.fn.system({ "chmod", "+x", file })
    print("Made " .. file .. " executable")
  else
    print("No file name detected")
  end
end, { desc = "Make current file executable" })

vim.keymap.set("n", "<C-n>", "<Nop>", { noremap = true, silent = true, desc = "Unbind <C-n>" })
