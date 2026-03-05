-- -- No true-colour (cterm colours used for diagnostics etc.)
-- vim.opt.termguicolors = false

-- -- Override underline groups to use background highlighting instead
-- -- ctermbg values used because notermguicolors is set in vimrc.vim
-- -- https://www.ditig.com/256-colors-cheat-sheet
-- local hl_error = { ctermbg = 224,  bg = "#4d0000" }
-- local hl_warn  = { ctermbg = 58,  bg = "#4d3300" }
-- local hl_info  = { ctermbg = 159,  bg = "#1a3d5c" } 
-- local hl_hint  = { ctermbg = 22,  bg = "#003320" }

-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", hl_error)
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",  hl_warn)
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",  hl_info)
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",  hl_hint)

-- -- Orange line numbers (cterm 130 = #af5f00)
-- vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 130 })

-- -- Blue comments (cterm 32), applied to both base and Treesitter groups
-- local comment_blue = { ctermfg = 32, fg = "#0087d7"}
-- vim.api.nvim_set_hl(0, "@comment", comment_blue)

-- local string_red = { ctermfg = 1, fg = "#ff0000"}
-- vim.api.nvim_set_hl(0, "@string", string_red)

-- local keyword_config = { ctermfg = 5 }
-- vim.api.nvim_set_hl(0, "@keyword", keyword_config)
local matching_paren_config = {
	ctermbg = 218,
	bold = true,
}

vim.api.nvim_set_hl(0, "MatchParen", matching_paren_config)

