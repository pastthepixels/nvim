return {
	-- Support .org
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		config = function()
			-- Setup orgmode
			require("orgmode").setup({
				org_agenda_files = "~/Nextcloud/Notes/Org/**/*",
				org_default_notes_file = "~/Nextcloud/Notes/Org/refile.org",
			})
		end,
	},
	{
		"nvim-orgmode/org-bullets.nvim",
		config = function()
			require("org-bullets").setup()
		end,
	},
	{
		"danilshvalov/org-modern.nvim",
		config = function()
			local Menu = require("org-modern.menu")
			require("orgmode").setup({
				ui = {
					menu = {
						handler = function(data)
							Menu:new({
								window = {
									margin = { 1, 0, 1, 0 },
									padding = { 0, 1, 0, 1 },
									title_pos = "center",
									border = "single",
									zindex = 1000,
								},
								icons = {
									separator = "➜",
								},
							}):open(data)
						end,
					},
				},
			})
		end,
	},
	{
	  "chipsenkbeil/org-roam.nvim",
	  dependencies = {
		{
		  "nvim-orgmode/orgmode",
		  -- tag = "0.3.4",
		},
	  },
	  config = function()
		require("org-roam").setup({
		  directory = "~/Nextcloud/Notes/Org/",
			--  -- optional
			--  org_files = {
			-- "~/another_org_dir",
			-- "~/some/folder/*.org",
			-- "~/a/single/org_file.org",
			--  }
		})
	  end
	},

	-- Tables
	{ "dhruvasagar/vim-table-mode" },

	-- Markdown
	{
		-- Install markdown preview, use npx if available.
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function(plugin)
			if vim.fn.executable "npx" then
				vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
			else
				vim.cmd [[Lazy load markdown-preview.nvim]]
				vim.fn["mkdp#util#install"]()
			end
		end,
		init = function()
			if vim.fn.executable "npx" then vim.g.mkdp_filetypes = { "markdown" } end
		end,
	},

	-- {
	-- 	'MeanderingProgrammer/render-markdown.nvim',
	-- 	opts = {},
	-- 	dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
	-- },

	-- { "vim-pandoc/vim-pandoc" },
	--
	-- { "vim-pandoc/vim-pandoc-syntax" },

	{
		"tadmccorkle/markdown.nvim",
		ft = "markdown", -- or 'event = "VeryLazy"'
		opts = {
			-- configuration here or empty for defaults
		},
	},

	-- LaTeX
	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here, e.g.
			vim.g.vimtex_view_method="general"
			vim.g.vimtex_general_viewer = "okular"
			-- vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
		end
	},
}
