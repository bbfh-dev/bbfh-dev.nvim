return {
	"MagicDuck/grug-far.nvim",
	-- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
	-- additional lazy config to defer loading is not really needed...
	keys = {
		{ "<leader>sS", vim.cmd.GrugFar, desc = "Find & replace" },
	},
	opts = {},
}
