return { -- You can easily change to a different colorscheme.
	"sainnhe/gruvbox-material",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	config = function()
		vim.g.gruvbox_material_enable_italic = false
		vim.g.gruvbox_material_background = "hard"
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
