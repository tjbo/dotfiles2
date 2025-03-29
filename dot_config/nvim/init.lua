vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true
vim.g.loaded_netrwPlugin = 0
vim.opt.number = true
vim.opt.showmode = false
vim.opt.re = 1

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true

vim.opt.laststatus = 3
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.textwidth = 80
vim.opt.wrap = true

vim.opt.wildmode = { "list:longest,full" }

-- allows persistent undos
vim.opt.undodir = "/tmp/nvim_undos"
vim.opt.undofile = true

-- backups config
vim.opt.backupdir = "/tmp/nvim_backups"
vim.opt.backup = true

-- add timestamp as extension for backup files
vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("timestamp_backupext", { clear = true }),
	desc = "Add timestamp to backup extension",
	pattern = "*",
	callback = function()
		vim.opt.backupext = "-" .. vim.fn.strftime("%Y%m%d%H%M")
	end,
})

-- turn off auto comment insertion
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
	end,
})

-- map keys function
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }

	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- clears the search highlight
map("n", "<C-L>", ":nohlsearch<cr><C-L>")

-- keeps selection when indenting in visual mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- allows <ctrl+v> to paste from system clipboard
map("i", "<c-v>", "<c-r>+")
map("n", "<leader>/", "<cmd>WhichKey<cr>")
map("n", "<PageUp>", "<C-b>")

local function show_notification(message, level)
	local notify = require("notify")
	notify(message, level, { title = "conform.nvim" })
end

-- command to toggle formatting when not needed
vim.api.nvim_create_user_command("FormatToggle", function(args)
	local is_global = not args.bang
	if is_global then
		vim.g.disable_autoformat = not vim.g.disable_autoformat
		if vim.g.disable_autoformat then
			show_notification("Autoformat-on-save disabled globally", "info")
		else
			show_notification("Autoformat-on-save enabled globally", "info")
		end
	else
		vim.b.disable_autoformat = not vim.b.disable_autoformat
		if vim.b.disable_autoformat then
			show_notification("Autoformat-on-save disabled for this buffer", "info")
		else
			show_notification("Autoformat-on-save enabled for this buffer", "info")
		end
	end
end, {
	desc = "Toggle autoformat-on-save",
	bang = true,
})

-- sync clipboard between os and nvim
-- schedule the setting after `UiEnter` because it can increase startup-time
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- enable break indent
vim.opt.breakindent = true

-- save undo history
vim.opt.undofile = true

-- case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = "yes:1"

-- we back up so don't need swap
vim.opt.swapfile = false

-- default splits to vertical
vim.opt.diffopt:append({ "vertical" })

-- open help windows vertically
vim.cmd([[autocmd FileType help wincmd L]])

vim.opt.history = 999

-- decrease update time
vim.opt.updatetime = 250

-- decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = false

-- preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 999
vim.opt.cursorline = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({
	{ import = "custom.plugins" },
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
