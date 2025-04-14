return {
	-- useful plugin to show you pending keybinds
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	opts = {
		-- delay between pressing a key and opening which-key (milliseconds)
		-- this setting is independent of vim.opt.timeoutlen
		delay = 300,
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = true,
		},
		plugins = {
			marks = false,
			registers = false,
			spelling = {
				enabled = false,
			},
		},
		layout = {
			height = { min = 30, max = 250 },
		},
		win = {
			padding = { 2, 2 },
		},

		icons = {
			breadcrumb = "»", -- You can change these to whatever you want or leave them empty
			separator = "→", -- Or keep as default without any special characters
			group = "", -- Empty group will hide icons in the group
			ellipsis = "…",
			mappings = false,
		},
		spec = {
			{ "<leader>c", group = "GitConflict" },
			{
				"<leader>co",
				"<cmd>GitConflictChooseOurs<CR>",
				desc = "Choose Ours",
			},
			{
				"<leader>ct",
				"<cmd>GitConflictChooseTheirs<CR>",
				desc = "Choose Theirs",
			},
			{
				"<leader>cb",
				"<cmd>GitConflictChooseBoth<CR>",
				desc = "Choose Both",
			},
			{
				"<leader>cn",
				"<cmd>GitConflictChooseNone<CR>",
				desc = "Choose None",
			},
			{
				"<leader>cj",
				"<cmd>GitConflictNextConflict<CR>",
				desc = "Next Conflict",
			},
			{
				"<leader>ck",
				"<cmd>GitConflictPrevConflict<CR>",
				desc = "Previous Conflict",
			},
			{
				"<leader>cl",
				"<cmd>GitConflictListQf<CR>",
				desc = "List Conflicts",
			},
			{ "<leader>e", group = "Errors" },
			{ "<leader>ee", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Show Diagnostic For Error" },
			{ "<leader>ej", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
			{ "<leader>ek", "<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "Prev Diagnostic" },
			{ "<leader>f", group = "Format" },
			{ "<leader>g", group = "Git" },
			{ "<leader>gb", "<cmd>Gitsigns blame_line<CR>", desc = "Blame line" },
			{ "<leader>gd", "<cmd>Gitsigns preview_hunk<CR>", desc = "Diff" },
			{ "<leader>gh", "<cmd>Gitsigns toggle_linehl<cr>", desc = "Toggle line highlights" },
			{ "<leader>gj", "<cmd>Gitsigns next_hunk<cr>", desc = "Next hunk" },
			{ "<leader>gk", "<cmd>Gitsigns prev_hunk<cr>", desc = "Prev hunk" },
			{ "<leader>gq", "<cmd>Gitsigns reset_buffer<cr>", desc = "Reset current buffer" },
			{ "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset hunk" },
			{ "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage hunk" },
			{ "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Undo stage hunk" },
			{ "<leader>gv", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle current line blame" },
			{ "<leader>gw", "<cmd>Gitsigns toggle_word_diff<cr>", desc = "Toggle word diff" },
			{ "<leader>h", group = "Grapple" },
			{ "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
			{ "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
			{ "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
			{ "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
			{ "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Select fifth tag" },
			{ "<leader>6", "<cmd>Grapple select index=5<cr>", desc = "Select sixth tag" },
			{ "<leader>7", "<cmd>Grapple select index=5<cr>", desc = "Select seventh tag" },
			{ "<leader><leader>", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
			{ "<leader>hh", "<cmd>:buffer #<cr>", desc = "Go back to last buffer" },
			{ "<leader>ht", "<cmd>Grapple tag<cr>", desc = "Grapple tag" },
			{ "<leader>hu", "<cmd>Grapple untag<cr>", desc = "Grapple untag" },
			{ "<leader>hr", "<cmd>Grapple reset<cr>", desc = "Grapple reset the current scope" },
			{ "<leader>hr", "<cmd>Grapple prune({ limit: '1d' })<cr>", desc = "Grapple prune 1 day" },
			{ "<leader>n", group = "Noice" },
			{ "<leader>nd", "<cmd>Noice dismiss<CR>", desc = "Dismiss Notifications" },
			{ "<leader>nl", "<cmd>Noice last<CR>", desc = "Noice Last Message" },
			{ "<leader>o", group = "Oil" },
			{ "<leader>oo", "<cmd>Oil<cr>", desc = "Open Oil" },
			{ "<leader>q", group = "Quickfix" },
			{ "<leader>qq", "<cmd>copen<cr>", desc = "Open quickfix" },
			{ "<leader>t", group = "Telescope" },
			{ "<leader>tb", "<cmd>Telescope buffers<cr>", group = "Telescope" },
			{
				"<leader>tc",
				"<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({ layout_strategy = 'horizontal' })<cr>",
				desc = "Fuzzy search current buffer",
			},
			{
				"<leader>te",
				"<cmd>lua require('telescope.builtin').diagnostics({ initial_mode = 'normal', path_display='hidden', wrap_results = true })<cr>",
				desc = "List Errors For Buffers",
			},
			{
				"<leader>tf",
				"<cmd>lua require('telescope.builtin').find_files()<cr>",
				desc = "Find files in current working directory ",
			},
			{ "<leader>tg", "<cmd>lua require('telescope.builtin').git_status()<cr>", desc = "Show git files" },
			{
				"<leader>th",
				"<cmd>lua require('telescope.builtin').command_history()<cr>",
				desc = "Show command history",
			},
			{ "<leader>tm", "<cmd>lua require('telescope.builtin').marks()<cr>", desc = "Marks" },
			{ "<leader>tn", "<cmd>Telescope noice<cr>", desc = "Notification history" },
			{ "<leader>to", "<cmd>lua require('telescope.builtin').oldfiles()<cr>", desc = "Recent files" },
			{ "<leader>tr", "<cmd>Telescope registers<cr>", desc = "Registers" },
			{
				"<leader>ts",
				"<cmd>lua require('telescope.builtin').live_grep()<cr>",
				desc = "Search for string in working directory",
			},
			{ "<leader>tt", "<cmd>Telescope git_files<cr>", desc = "Seach gitfiles in working directory" },
			{
				"<leader>tx",
				"<cmd>lua require('telescope.builtin').grep_string()<cr>",
				desc = "Searches for cursor word in working directory",
			},
			{ "<leader>w", group = "Window" },
			{ "<leader>w", "<cmd>close<cr>", desc = "Close" },
			{ "<leader>wj", "<cmd>wincmd j<cr>", desc = "Move up" },
			{ "<leader>wk", "<cmd>wincmd k<cr>", desc = "Move down" },
			{ "<leader>wh", "<cmd>wincmd h<cr>", desc = "Move left" },
			{ "<leader>wl", "<cmd>wincmd l<cr>", desc = "Move right" },
			{ "<leader>ww", "<cmd>wincmd w<cr>", desc = "Cycle windows" },
		},
	},
}
