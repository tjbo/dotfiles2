return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"navarasu/onedark.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = { " ", "" }, -- clean vertical lines
				max_name_length = 17,
				numbers = "none",
				themable = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				show_duplicate_prefix = false,
				always_show_bufferline = true,
			},
			highlights = {
				separator = {
					-- fg = colors.black,
					-- bg = colors.black,
				},
			},
		})
		-- local colors = require("onedark.colors")
		-- vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", {})
		-- vim.api.nvim_set_hl(0, "BufferLineBackground", {
		-- 	fg = colors.fg, -- dull text color
		-- 	bg = colors.black, -- darker background
		-- 	italic = true,
		-- })
		-- vim.api.nvim_set_hl(0, "BufferLineBufferVisible", {
		-- 	fg = colors.fg, -- slightly brighter text
		-- 	bg = colors.black, -- same as background
		-- })
		-- -- Set BufferLineBufferSelected style
		-- vim.api.nvim_set_hl(0, "BufferLineBufferSelected", {
		-- 	fg = colors.green, -- Text color
		-- 	bg = colors.black, -- Background color
		-- 	bold = false,
		-- 	italic = true,
		-- })
	end,
}
