return {
	"navarasu/onedark.nvim",
	dependencies = {
		"akinsho/bufferline.nvim",
	},
	lazy = false,
	config = function()
		require("onedark").setup({
			colors = {
				black = "#181a1f",
				bg0 = "#181a1f",
				bg1 = "#31353f",
				bg2 = "#393f4a",
				bg3 = "#3b3f4c",
				bg_d = "#21252b",
				bg_blue = "#73b8f1",
				bg_yellow = "#ebd09c",
				fg = "#abb2bf",
				purple = "#c678dd",
				green = "#5af78e",
				orange = "#d19a66",
				blue = "#57c7ff",
				yellow = "#e5c07b",
				cyan = "#57c7ff",
				red = "#e86671",
				grey = "#5c6370",
				light_grey = "#eff0eb",
				dark_cyan = "#2b6f77",
				dark_red = "#993939",
				dark_yellow = "#93691d",
				dark_purple = "#8a3fa0",
				diff_add = "#31392b",
				diff_delete = "#382b2c",
				diff_change = "#1c3448",
				diff_text = "#2c5372",
			},
			highlights = {
				TSKeyword = { fg = "$green" },
				TSString = { fg = "$orange", bg = "#00ff00", fmt = "bold" },
				TSFunction = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
				TSFuncBuiltin = { fg = "#0059ff" },
			},
		})
		vim.cmd("colorscheme onedark")
	end,
}
