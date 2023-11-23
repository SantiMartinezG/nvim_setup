local rt = require("rust-tools")
local mason_registry = require("mason-registry")

local codelldb = mason_registry.get_package("codelldb")
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = "/home/stratomaster/.local/share/nvim/mason/packages/codelldb/extension/lldb/lib/liblldb.so"

rt.setup({
	dap = {
		adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
	},
	server = {
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
		on_attach = function(_, bufnr)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<Leader>k",
				":lua require('rust-tools.hover_actions').hover_actions()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"<Leader>a",
				":lua require('rust-tools.code_action_group').code_action_group()<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
	tools = {
		hover_actions = {
			auto_focus = true,
		},
	},
})
