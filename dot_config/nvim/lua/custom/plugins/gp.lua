return {
	"robitx/gp.nvim",
	enable = false,
	config = function()
		local conf = {
			providers = {

				openai = {
					endpoint = "https://api.openai.com/v1/chat/completions",
					secret = { "op", "read", "op://private/OpenAI/credential" },
				},
			},
		}
		-- require("gp").setup(conf)

		-- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
	end,
}
