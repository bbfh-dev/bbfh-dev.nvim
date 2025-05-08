return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "th", vim.cmd.BufferLineCyclePrev, desc = "[T]ab cycle previous" },
		{ "tl", vim.cmd.BufferLineCycleNext, desc = "[T]ab cycle next" },
		{ "tH", vim.cmd.BufferLineMovePrev, desc = "[T]ab move previous" },
		{ "tL", vim.cmd.BufferLineMoveNext, desc = "[T]ab move next" },
		{ "tch", vim.cmd.BufferLineCloseLeft, desc = "[T]ab [C]lose left" },
		{ "tcl", vim.cmd.BufferLineCloseRight, desc = "[T]ab [C]lose right" },
		{ "tcc", vim.cmd.BufferLinePickClose, desc = "[T]ab [C]lose picker" },
		{ "tcC", vim.cmd.BufferLineCloseOthers, desc = "[T]ab [C]lose others" },
	},
	opts = {},
}
