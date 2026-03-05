-- Must be set before filetype detection
vim.g.loaded_python3_provider = 0

require("config.options")

require("config.lazy")

vim.lsp.enable('ruff')

vim.diagnostic.config({
  virtual_text = true,        -- shows message at end of line
  signs = true,               -- the 'E' gutter sign
  underline = true,           -- applies DiagnosticUnderlineXxx highlight groups to the range
  update_in_insert = false,   -- don't show while typing
})

require("config.colors")
