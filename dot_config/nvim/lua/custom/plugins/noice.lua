return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		routes = {
			{
				filter = {
					event = "msg_show",
					find = "deprecated",
				},
				opts = { skip = true },
			},
		},
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
		},
		-- you can enable a preset for easier configuration
		presets = {
			bottom_search = false, -- use a classic bottom cmdline for search
			command_palette = false, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = false, -- add a border to hover docs and signature help
		},
		views = {
			cmdline_popup = {
				position = {
					row = 10,
					col = "50%",
				},
				size = {
					width = 60,
					height = "auto",
				},
			},
			confirm = {
				position = "center", -- Center confirmation popups
			},
			popupmenu = {
				enabled = true,
				backend = "nui",
				relative = "editor",
				position = {
					row = 13,
					col = "50%",
				},
				size = {
					width = 60,
					height = 20,
				},
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
				win_options = {
					winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
				},
			},
		},
	},
	dependencies = {
		"rcarriga/nvim-notify",
	},
}
