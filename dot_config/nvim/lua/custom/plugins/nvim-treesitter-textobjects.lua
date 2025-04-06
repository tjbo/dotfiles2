return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["aj"] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
						["ij"] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
						["lj"] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
						["rj"] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },
					},
				},
			},
		})
	end,
}
