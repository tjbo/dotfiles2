return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("mini.icons").setup()
		MiniIcons.mock_nvim_web_devicons()
	end,
}
