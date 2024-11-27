-- Lazy.nvim
require("config.lazy")

-- Keybinds
require("config.keymaps")

-- Changing tab width
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Editor things
vim.opt.relativenumber = true

-- Neovide things
if vim.g.neovide then
	vim.g.neovide_cursor_vfx_mode = "wireframe"
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_scale_factor = 0.7
	vim.g.neovide_floating_shadow = false
	-- :3
	vim.api.nvim_set_keymap(
		"n",
		"<C-=>",
		":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.05<CR>",
		{ silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<C-->",
		":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.05<CR>",
		{ silent = true }
	)
	vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end


-- Format on save (https://www.mitchellhanberg.com/modern-format-on-save-in-neovim/)
-- 1
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
	callback = function(args)
		-- 2
		vim.api.nvim_create_autocmd("BufWritePre", {
			-- 3
			buffer = args.buf,
			callback = function()
				-- 4 + 5
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})
