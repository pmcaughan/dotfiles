-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Leader key (map Space to Nop first so it has no default behaviour)
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '

-- Syntax and filetype
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- Autocomplete
-- vim.opt.omnifunc = 'syntaxcomplete#Complete'

-- Recursive subdirectories on path (for ^x^f file completion)
vim.opt.path:append('**')

-- File manager (netrw) — acts like NERDtree
vim.g.netrw_banner = 0       -- disable banner
vim.g.netrw_liststyle = 3    -- tree view
vim.g.netrw_browse_split = 4 -- open in split
vim.g.netrw_winsize = 25     -- small split on open

-- Swap : and ; (no shift needed for command mode)
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')

-- Q runs current line as a shell command and writes output
vim.keymap.set('n', 'Q', '!!$SHELL<CR>')

-- Tabs: 4 wide, no expansion to spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false

-- Use system clipboard
vim.opt.clipboard:prepend('unnamed')

-- Encoding (Neovim defaults to UTF-8, this is a no-op but kept for parity)
vim.opt.encoding = 'UTF-8'

-- Tags
vim.opt.tags = './tags;/'

-- No search highlight
vim.opt.hlsearch = false

-- Tagbar toggle
-- vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>')
vim.cmd("set completeopt+=noselect")
vim.opt.winborder="rounded"

-- Error Display
vim.diagnostic.config({
	float = true,
	-- virtual_lines = true,
	signs = true,               -- the 'E' gutter sign
	underline = true,           -- applies DiagnosticUnderline highlight groups to the range
})
vim.o.updatetime = 500  -- ms before CursorHold fires
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "line" })
  end
})
