return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "[a", vim.cmd.AerialPrev, desc = "Navigate to previous [A]erial symbol" },
		{ "]a", vim.cmd.AerialNext, desc = "Navigate to next [A]erial symbol" },
	},
	opts = {},
}
