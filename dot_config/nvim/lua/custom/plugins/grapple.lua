return {
	"cbochs/grapple.nvim",
	dependencies = { "navarasu/onedark.nvim" },
	config = function()
		require("grapple").setup({
			icons = true,
			scope = "git_branch",
		})

		local colors = require("onedark.colors")

		vim.api.nvim_set_hl(0, "GrappleHint", { fg = colors.blue, bg = colors.bg0, bold = false })
		vim.api.nvim_set_hl(0, "GrappleName", { fg = colors.green, bg = colors.bg0, bold = true })
		vim.api.nvim_set_hl(0, "GrappleNoExist", { fg = colors.green, bg = colors.bg0, bold = true })
		vim.api.nvim_set_hl(0, "GrappleCurrent", { fg = colors.green, bg = colors.bg0, bold = true })
		vim.api.nvim_set_hl(0, "GrappleFloat", { fg = colors.green, bg = colors.bg0, bold = true })
		vim.api.nvim_set_hl(0, "GrappleBorder", { fg = "#89dceb", bg = colors.bg0 })
		vim.api.nvim_set_hl(0, "GrappleTitle", { fg = colors.blue, bg = colors.bg0, bold = false })
		vim.api.nvim_set_hl(0, "GrappleTitle", { fg = colors.blue, bg = colors.bg0, bold = false })
		vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e", fg = "#cdd6f4" })
		vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#313244", fg = "#f38ba8", bold = true })
	end,
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
}
