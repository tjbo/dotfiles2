return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"Myzel394/jsonfly.nvim",
		{ "echasnovski/mini.icons", opts = {} },
	},
	config = function()
		local actions = require("telescope.actions")

		local ta = {
			["<C-o>"] = function(p_bufnr)
				require("telescope.actions").send_selected_to_qflist(p_bufnr)
				vim.cmd.cfdo("edit")
			end,
			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,
			["<C-c>"] = actions.close,
			["<Down>"] = actions.nop,
			["<Up>"] = actions.nop,
			["<CR>"] = actions.select_default,
			["<C-CR>"] = actions.select_default,
			["<C-x>"] = actions.select_horizontal,
			["<C-v>"] = actions.select_vertical,
			["<C-t>"] = actions.select_tab,
			["<C-u>"] = actions.preview_scrolling_up,
			["<C-d>"] = actions.preview_scrolling_down,
			["<PageUp>"] = actions.nop,
			["<PageDown>"] = actions.nop,
			["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
			["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
			["<C-l>"] = actions.complete_tag,
			["<C-/>"] = actions.which_key,
			["<C-w>"] = { "<c-s-w>", type = "command" },
		}

		require("telescope").setup({
			defaults = {
				mappings = {
					i = ta,
					n = ta,
				},
				path_display = { "smart" },
				wrap_results = true,
				layout_config = {
					horizontal = { width = 0.95, height = 0.99 },
					vertical = { width = 0.98, height = 0.98 },
				},
				layout_strategy = "vertical",
			},
			pickers = {
				diagnostics = {
					previewer = true,
				},
				oldfiles = {
					previewer = false,
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
	end,
}
