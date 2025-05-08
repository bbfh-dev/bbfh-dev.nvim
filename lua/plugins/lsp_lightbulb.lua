-- The plugin shows a lightbulb in the sign column whenever a textDocument/codeAction is available at the current cursor position.
return {
	"kosayoda/nvim-lightbulb",
	opts = {
		autocmd = { enabled = true },
	},
}
