-- mini.files
vim.keymap.set("", "<leader>e", '<cmd>lua MiniFiles.open()<CR>', { desc = "Open mini.files" })

-- Minimap
vim.keymap.set("n", "<leader>m", '<cmd>lua MiniMap.toggle()<CR>', { desc = "Show minimap" })

-- Show whitespace
vim.keymap.set("n", "<leader>w", '<cmd>ListcharsToggle<CR>', { desc = "Show whitespace" })

-- Copy to system clipboard
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Redo
vim.keymap.set("", "U", '<cmd>redo<CR>', { desc = "Redo" })

-- Terminal
vim.keymap.set("", "<leader>ot", '<cmd>ToggleTerm<CR>', { desc = "Toggle terminal" })

-- SSH
vim.keymap.set("", "<leader>os", '<cmd>RemoteSSHFSConnect<CR>', { desc = "Connect to remote filesystem" })

-- Word wrap
vim.keymap.set("", "<leader>uw", '<cmd>lua require("wrapping").toggle_wrap_mode()<CR>', { desc = "Toggle word wrap" })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', "<leader>fu", builtin.lsp_references, { desc = "Telescope find usages" })

-- Nabla preview
vim.keymap.set("n", "<leader>pn", '<cmd>lua require("nabla").popup()<CR>', { desc = "Nabla preview" })

-- Markdown preview
vim.keymap.set("n", "<leader>pm", '<cmd>MarkdownPreview<CR>', { desc = "Markdown preview" })

-- LSP stuff
vim.keymap.set("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = "LSP code action" })

-- Moving through buffers
vim.keymap.set("n", "H", '<cmd>bp<CR>', { desc = "Previous buffer" })
vim.keymap.set("n", "L", '<cmd>bn<CR>', { desc = "Next buffer" })
