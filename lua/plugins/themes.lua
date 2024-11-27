return {
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		init = function()
			vim.g.moonflyTransparent = true
			vim.g.moonflyWinSeparator = 2
			vim.opt.fillchars = { horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋', }
			-- vim.cmd [[colorscheme moonfly]]
		end
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000, init = function()
			vim.cmd [[colorscheme catppuccin-macchiato]]
		end
	}
}
