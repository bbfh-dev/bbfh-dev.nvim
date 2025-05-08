return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed.
		"nvim-telescope/telescope.nvim", -- optional
		{
			"rbong/vim-flog",
			lazy = true,
			cmd = { "Flog", "Flogsplit", "Floggit" },
			dependencies = {
				-- "tpope/vim-fugitive",
			},
		},
	},
	keys = {
		{ "<leader>gg", vim.cmd.Neogit, desc = "Open [G]it" },
		{ "<leader>gc", "<CMD>Telescope git_commits<CR>", desc = "Open [G]it [C]ommits" },
		{ "<leader>gb", "<CMD>Telescope git_branches<CR>", desc = "Open [G]it [B]ranches" },
		{ "<leader>gs", "<CMD>Telescope git_status<CR>", desc = "Open [G]it [S]tatus" },
	},
	opts = {
		-- "ascii"   is the graph the git CLI generates
		-- "unicode" is the graph like https://github.com/rbong/vim-flog
		-- "kitty"   is the graph like https://github.com/isakbm/gitgraph.nvim - use https://github.com/rbong/flog-symbols if you don't use Kitty
		graph_style = "unicode",
	},
}
