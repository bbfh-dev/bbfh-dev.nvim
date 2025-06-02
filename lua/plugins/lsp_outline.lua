return {
	"hedyhli/outline.nvim",
	lazy = true,
	cmd = { "Outline", "OutlineOpen" },
	keys = {
		{ "<leader>to", vim.cmd.Outline, desc = "[T]oggle [O]utline" },
		{ "<leader>tO", "<CMD>OutlineOpen!<CR>", desc = "[T]oggle [O]utline (open only)" },
	},
	opts = {
		outline_window = {
			width = 20,
		},
	},
}
