return {
	"cbochs/grapple.nvim",
	opts = {
		icons = false,
		scope = "git_branch",
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
}
