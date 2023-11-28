local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- List of plugins

local plugins = {
	-- Telescope
	{ "nvim-telescope/telescope.nvim", version = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Commenting with gc
	{ "numToStr/Comment.nvim", lazy = false },

	-- Ident Blankline
	{ "lukas-reineke/indent-blankline.nvim", main = "ib1" },

	-- Color Scheme
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

	-- Dev Icons
	{ "nvim-tree/nvim-web-devicons" },

	-- Status line
	{ "nvim-lualine/lualine.nvim" },

	-- Colorizer
	{ "norcalli/nvim-colorizer.lua" },

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- Harpoon
	{ "theprimeagen/harpoon" },

	-- UndoTree
	{ "mbbill/undotree" },

	-- Vim Fugitive
	{ "tpope/vim-fugitive" },

	-- Auto closing
	{ "windwp/nvim-autopairs" }, -- autoclose parens, brackets, quotes, etc...
	{ "windwp/nvim-ts-autotag" }, -- autoclose tags

	-- Lsp
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",

			-- Snippets
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
		},
	},

	-- Nerd Tree
	{ "nvim-tree/nvim-tree.lua" },

	-- Rust
	{ "simrat39/rust-tools.nvim" },

	-- Debug
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui" },

	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({
				ui = {
					border = "rounded",
					code_action = "",
				},
			})
		end,
	},

	-- Formatting
	{ "stevearc/conform.nvim" },

	-- Linting
	{ "mfussenegger/nvim-lint" },

	-- Copilot
	{ "github/copilot.vim" },
}

require("lazy").setup(plugins, {
	change_detection = {
		notify = false,
	},
})
