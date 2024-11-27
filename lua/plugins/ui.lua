return {
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },
	{
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end
    },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		  dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
	  'mikesmithgh/borderline.nvim',
	  enabled = true,
	  lazy = true,
	  event = 'VeryLazy',
	  config = function()
		require('borderline').setup()
		require('borderline.api').borderline("single")
	  end,
	},
	{
	  "fraso-dev/nvim-listchars",
	  config = function()
		require("nvim-listchars").setup({
		  save_state = false,
		  listchars = {
			trail = "-",
			nbsp = "+",
			eol = "↲",
			tab = "> ",
		  },
		  exclude_filetypes = {
			"markdown"
		  },
		  lighten_step = 5,
		})
	  end,
	},

  	-- Highlight TODO
	{
	  "folke/todo-comments.nvim",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  }
	},

	-- Sidebars
	{ "sidebar-nvim/sidebar.nvim" },
	{
	  "hedyhli/outline.nvim",
	  lazy = true,
	  cmd = { "Outline", "OutlineOpen" },
	  keys = { -- Example mapping to toggle outline
		{ "<leader>uo", "<cmd>Outline<CR>", desc = "Toggle outline" },
	  },
	  opts = {
		-- Your setup opts here
	  },
	},

	-- UI tomfoolery
	{
	  'stevearc/dressing.nvim',
	  opts = {},
	}

	-- {
	--   "folke/noice.nvim",
	--   event = "VeryLazy",
	--   opts = {
	--     -- add any options here
	--   },
	--   dependencies = {
	--     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	--     "MunifTanjim/nui.nvim",
	--     -- OPTIONAL:
	--     --   `nvim-notify` is only needed, if you want to use the notification view.
	--     --   If not available, we use `mini` as the fallback
	--     "rcarriga/nvim-notify",
	--     }
	-- }
}
