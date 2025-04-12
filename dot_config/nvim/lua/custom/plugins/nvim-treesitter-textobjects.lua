return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						-- ["]m"] = "@function.outer",
					},
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",

						-- ["aa"] = "@parameter.outer",
						-- ["ia"] = "@parameter.inner",

						-- ["aj"] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
						-- ["ij"] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
						-- ["lj"] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
						-- ["rj"] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },
					},
				},
			},
		})
	end,
}
