return {
	"hedyhli/outline.nvim",
	lazy = true,
	cmd = { "Outline", "OutlineOpen" },
	keys = {
		{ "<leader>to", vim.cmd.Outline, desc = "[T]oggle [O]utline" },
	},
	opts = {},
}
