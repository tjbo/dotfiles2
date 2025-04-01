-- Helper to get a color from an existing highlight group
local function get_color(group, attr)
	local ok, hl = pcall(vim.api.nvim_get_hl_by_name, group, true)
	if not ok or not hl[attr] then
		return nil
	end
	return string.format("#%06x", hl[attr])
end

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
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
					fg = "#3c3c44",
					bg = "#1e1e2e",
				},
			},
		})

		vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", {})

		vim.api.nvim_set_hl(0, "BufferLineBackground", {
			fg = "#888888", -- dull text color
			bg = "#1a1a1a", -- darker background
			italic = true,
		})

		vim.api.nvim_set_hl(0, "BufferLineBufferVisible", {
			fg = "#bbbbbb", -- slightly brighter text
			bg = "#1a1a1a", -- same as background
		})
		-- Set BufferLineBufferSelected style
		vim.api.nvim_set_hl(0, "BufferLineBufferSelected", {
			fg = get_color("Normal", "foreground"), -- Text color
			bg = get_color("Normal", "background"), -- Background color
			bold = true,
			italic = false,
		})
	end,
}
