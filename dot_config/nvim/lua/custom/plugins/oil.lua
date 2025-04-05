return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = false,
		constrain_cursor = "name",
		prompt_save_on_select_new_entry = true,
		view_options = {
			hidden = true,
			is_hidden_file = function(name, bufnr)
				return vim.startswith(name, ".")
			end,
		},
		keymaps = {
			["<C-?>"] = "actions.show_help",
			["f"] = "actions.select",
			["e"] = "actions.select",
			["<CR>"] = "actions.select",
			["<C-t>"] = "actions.select_tab",
			["<C-p>"] = "actions.preview",
			["<C-c>"] = "actions.close",
			["<C-l>"] = "actions.refresh",
			["b"] = "actions.parent",
			["_"] = "actions.open_cwd",
			["`"] = "actions.cd",
			["~"] = "actions.tcd",
			["<C-s>"] = "actions.change_sort",
			["<C-.>"] = "actions.toggle_hidden",
		},
		use_default_keymaps = false,
	},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
