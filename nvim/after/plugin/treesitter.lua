require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "tsx", "rust", "html", "css", "toml", "python", "astro" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true
  },
}
