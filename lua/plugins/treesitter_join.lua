return {
	"Wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
	keys = {
		{
			"<leader>cf",
			function()
				require("treesj").toggle()
			end,
			desc = "[C]ode [F]old",
		},
	},
	opts = {
		---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
		use_default_keymaps = false,
		---If line after join will be longer than max value,
		---@type number If line after join will be longer than max value, node will not be formatted
		max_join_length = 65536,
	},
}
