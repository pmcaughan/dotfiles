return { 
	{
		"neovim/nvim-lspconfig",
	},
	{
	  'nvim-treesitter/nvim-treesitter',
	  lazy = false,
	  build = ':TSUpdate'
	}
}
