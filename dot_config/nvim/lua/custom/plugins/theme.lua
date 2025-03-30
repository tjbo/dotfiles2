return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("hi Normal guibg=NONE ctermbg=NONE") -- Transparent background for Normal text
		vim.cmd("hi NonText guibg=NONE ctermbg=NONE") -- Transparent background for NonText characters
		vim.cmd("hi VertSplit guibg=NONE ctermbg=NONE") -- Transparent background for vertical splits
		vim.cmd("hi StatusLine guibg=NONE") -- Transparent background for status line
		vim.cmd("hi StatusLineNC guibg=NONE") -- Transp
		vim.api.nvim_set_hl(0, "BufferLineFill", { fg = "#ffffff" })
		vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = "#ffffff" })
		vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bold = true })
		vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = "NONE", fg = "NONE" })
		vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", {})
		vim.cmd("colorscheme cyberdream")

		require("cyberdream").setup({
			transparent = true,
		})
	end,
	opts = {
		saturation = 0.6,
	},
}
