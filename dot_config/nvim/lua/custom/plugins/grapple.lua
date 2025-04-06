return {
	"cbochs/grapple.nvim",
	opts = {
		icons = true,
		scope = "git_branch",
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
}
