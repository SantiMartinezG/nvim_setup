require("lspsaga").setup({
	diagnostic = {
		diagnostic_only_current = true,
	},
})

-- Callhierarchy
vim.api.nvim_set_keymap("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { noremap = true, silent = true })

-- Code action
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = true })

-- Definition
vim.api.nvim_set_keymap("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pt", "<cmd>Lspsaga peek_type_definition<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pg", "<cmd>Lspsaga goto_definition<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pi", "<cmd>Lspsaga goto_type_definition<CR>", { noremap = true, silent = true })

-- Diagnostic
vim.api.nvim_set_keymap("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = true })

vim.diagnostic.config({
	virtual_text = false,
})

-- Finder
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Lspsaga finder<CR>", { noremap = true, silent = true })

-- Terminal toggle
vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>Lspsaga term_toggle<CR>", { noremap = true, silent = true })

-- Hover
vim.api.nvim_set_keymap("n", "<leader>hk", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true })

-- Outline
vim.api.nvim_set_keymap("n", "<leader>oo", "<cmd>Lspsaga outline<CR>", { noremap = true, silent = true })

-- Rename
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true })
