return {
	{
		"preservim/vim-pencil",
		ft = { "markdown", "text", "tex" },
		init = function()
			-- Enable pencil automatically for writing filetypes
			vim.g["pencil#wrapModeDefault"] = "soft"
		end,
		config = function()
			-- Optional keymaps
			vim.keymap.set("n", "<leader>p", "<cmd>PencilToggle<CR>", { desc = "Toggle Pencil" })
		end,
	},
}
