return {
  "neovim/nvim-lspconfig",
  config = function()
    -- No Mason needed; just configure the client to connect to Godot's built-in LSP
    require("lspconfig").gdscript.setup({
      -- Godot 4 listens on localhost:6005 by default
      cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
      -- Optional: root pattern
      root_dir = require("lspconfig.util").root_pattern("project.godot", ".git"),
      filetypes = { "gdscript" },
    })
  end,
}
