return {
	"mizlan/iswap.nvim",
	event = "VeryLazy",
	keys = {
		{ "<C-Left>", vim.cmd.IMoveWithLeft, desc = "Move node left" },
		{ "<C-Right>", vim.cmd.IMoveWithRight, desc = "Move node right" },
	},
}
