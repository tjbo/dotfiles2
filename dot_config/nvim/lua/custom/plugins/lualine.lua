return {
	"nvim-lualine/lualine.nvim",
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				icons_enabled = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {},
				lualine_c = {
					{
						"filename",
						file_status = true, -- displays file status (readonly status, modified status)
						newfile_status = true, -- display new file status (new file means no write after created)
						path = 3,
					},
				},
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = "#ff9e64" },
					},
					"encoding",
					{
						"filetype",
						colored = true, -- displays filetype icon in color if set to true
						icon_only = false, -- display only an icon for filetype
						icon = { align = "right" }, -- display filetype icon on the right hand side
					},
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_y = {},
				lualine_z = {},
			},
			winbar = {},
			tabline = {
				lualine_a = { "branch" },
				lualine_b = {
					{
						function()
							return require("grapple").name_or_index()
						end,
						cond = function()
							return package.loaded["grapple"] and require("grapple").exists()
						end,
					},
				},
				lualine_c = {
					{
						"filename",

						file_status = true, -- displays file status (readonly status, modified status)
						newfile_status = true, -- display new file status (new file means no write after created)
						path = 0,
					},
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
