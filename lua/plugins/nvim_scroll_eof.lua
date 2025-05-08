-- Scroll past the end of file just like scrolloff option
return {
	"Aasim-A/scrollEOF.nvim",
	event = { "CursorMoved", "WinScrolled" },
	opts = {},
}
