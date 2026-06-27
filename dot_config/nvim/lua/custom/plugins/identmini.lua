return {
	"nvimdev/indentmini.nvim",
	config = function()
		require("indentmini").setup({
			char = "│",
			enabled = false,
			key = "<F12>",
		})

		vim.cmd("highlight IndentLine guifg=#444444")
	end,
}
