return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		-- you'll need at least one of these
		{ "nvim-telescope/telescope.nvim" },
		-- {'ibhagwan/fzf-lua'},
	},
	keys = {
		{ "<C-y>", "<CMD>Telescope neoclip<CR>", desc = "Open yanking history" },
	},
	opts = {},
}
