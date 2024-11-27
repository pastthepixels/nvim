return {
	{
		'echasnovski/mini.nvim',
		version = false,
		config = function()
			require("mini.misc").setup()
			require("mini.basics").setup()
			require("mini.extra").setup()
			require("mini.starter").setup()
			require("mini.align").setup()
			require("mini.files").setup()
			require("mini.notify").setup()
			require("mini.tabline").setup()
			require("mini.statusline").setup()
			require("mini.hipatterns").setup()
			require("mini.sessions").setup()
			require("mini.ai").setup()
			require("mini.icons").setup()
			require("mini.visits").setup()
			require("mini.trailspace").setup()
			require("mini.map").setup()
			require("mini.pairs").setup()
			require("mini.comment").setup()
			-- require("mini.completion").setup()
			require("mini.cursorword").setup()
			require("mini.git").setup()
			require("mini.bracketed").setup()
			-- require("mini.animate").setup()
			require("mini.notify").setup()
			require("mini.indentscope").setup()

			--Theme
			-- require("mini.base16").setup({
			-- 	-- Table with names from `base00` to `base0F` and values being strings of
			-- 	-- HEX colors with format "#RRGGBB". NOTE: this should be explicitly
			-- 	-- supplied in `setup()`.
			-- 	-- Breeze
			-- 	palette = {
			-- 		base00 = "#222528",
			-- 		base01 = "#31363B",
			-- 		base02 = "#3F4347",
			-- 		base03 = "#797B7C",
			-- 		base04 = "#A5A6A8",
			-- 		base05 = "#CECEC1",
			-- 		base06 = "#2D5B75",
			-- 		base07 = "#207F57",
			-- 		base08 = "#F44F4F",
			-- 		base09 = "#C35A00",
			-- 		base0A = "#F67300",
			-- 		base0B = "#54AA74",
			-- 		base0C = "#26ADAD",
			-- 		base0D = "#287FB8",
			-- 		base0E = "#AE80FF",
			-- 		base0F = "#a06949",
			-- 	},
			-- })

			--Showing keybinds
			local miniclue = require("mini.clue")
			miniclue.setup({
				triggers = {
					-- Leader triggers
					{ mode = 'n', keys = '<Leader>' },
					{ mode = 'x', keys = '<Leader>' },


					-- Local leader triggers
					{ mode = 'n', keys = '<LocalLeader>' },
					{ mode = 'x', keys = '<LocalLeader>' },

					-- Built-in completion
					{ mode = 'i', keys = '<C-x>' },

					-- `g` key
					{ mode = 'n', keys = 'g' },
					{ mode = 'x', keys = 'g' },

					-- Marks
					{ mode = 'n', keys = "'" },
					{ mode = 'n', keys = '`' },
					{ mode = 'x', keys = "'" },
					{ mode = 'x', keys = '`' },

					-- Registers
					{ mode = 'n', keys = '"' },
					{ mode = 'x', keys = '"' },
					{ mode = 'i', keys = '<C-r>' },
					{ mode = 'c', keys = '<C-r>' },

					-- Window commands
					{ mode = 'n', keys = '<C-w>' },

					-- `z` key
					{ mode = 'n', keys = 'z' },
					{ mode = 'x', keys = 'z' },
				},

				clues = {
					-- Enhance this by adding descriptions for <Leader> mapping groups
					miniclue.gen_clues.builtin_completion(),
					miniclue.gen_clues.g(),
					miniclue.gen_clues.marks(),
					miniclue.gen_clues.registers(),
					miniclue.gen_clues.windows(),
					miniclue.gen_clues.z(),
				},
			})
		end
	},
}
