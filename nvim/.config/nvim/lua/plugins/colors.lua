return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			local ibl = require("ibl")
			ibl.setup({ enabled = false, indent = { char = "│" } })
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "python",
				callback = function() ibl.setup_buffer(0, { enabled = true }) end,
			})
		end,
	},
	{
		'maxmx03/solarized.nvim',
		lazy = false,
		priority = 1000,
		---@type solarized.config
		opts = {},
		config = function(_, opts)
		vim.o.termguicolors = true
		vim.o.background = 'light'
		require('solarized').setup(opts)
		vim.cmd.colorscheme 'solarized'
		end,
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,

		-- Completion for `blink.cmp`
		-- dependencies = { "saghen/blink.cmp" },
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = {
			theme = 'auto',
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'hostname', 'diff'},
				lualine_c = {'diagnostics', 'filename'},
				lualine_d = {'buffers'},
				lualine_x = {'datetime'},
				lualine_z = {'lsp-status'}
			}

		},
	}
}
