return {
	"echasnovski/mini.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.comment").setup({
			mappings = {
				comment = "gc",
				comment_line = "gcc",
				comment_visual = "gc",
				textobject = "gc",
			},
		})
	end,
}
