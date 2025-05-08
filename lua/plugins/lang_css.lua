return {
	"cjodo/convert.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>Lcc", vim.cmd.ConvertFindCurrent, desc = "Find convertable unit in current line" },
		-- Add "v" to enable converting a selected region
		{ "<leader>Lca", vim.cmd.ConvertAll, mode = { "n", "v" }, desc = "Convert all of a specified unit" },
	},
}
