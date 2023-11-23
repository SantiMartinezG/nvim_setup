local opt = vim.opt

-- python config for neovim
vim.g.python3_host_prog = "/usr/bin/python3"

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
opt.termguicolors = true -- for true color terminal
opt.background = "dark"
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace behavior
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- considering string-string as whole word
opt.iskeyword:append("-")

opt.softtabstop = 2 -- make softtabstop consistent with tabstop and shiftwidth
opt.smartindent = true -- smart autoindent, useful for programmers
opt.hlsearch = false -- from the example, which I think is useful
opt.incsearch = true -- show incremental search results as you type

-- disable swap and backup, and set undodir
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- scrolloff for keeping context while scrolling
opt.scrolloff = 8

-- updatetime for quicker cursor response (might be useful for plugins like CoC)
opt.updatetime = 50

-- colorcolumn as a guide for max line width
opt.colorcolumn = "100"

-- additional word separator (from previous example)
opt.isfname:append("@-@")

-- impatient.vim
vim.loader.enable()

-- split panels
vim.api.nvim_set_keymap("n", "<leader><C-v>", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><C-s>", ":split<CR>", { noremap = true, silent = true })

-- navigation between panels
vim.api.nvim_set_keymap("n", "<leader><C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><C-l>", "<C-w>l", { noremap = true, silent = true })

-- close panel
vim.api.nvim_set_keymap("n", "<leader><C-x>", ":q<CR>", { noremap = true, silent = true })
