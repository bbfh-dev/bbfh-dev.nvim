return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy", -- Or `LspAttach`
	priority = 1000, -- needs to be loaded in first
	config = function()
		require("tiny-inline-diagnostic").setup({
			options = {
				-- Display the source of the diagnostic (e.g., basedpyright, vsserver, lua_ls etc.)
				show_source = {
					enabled = false,
					if_many = true,
				},
				multilines = {
					-- Enable multiline diagnostic messages
					enabled = true,
					-- Always show messages on all lines for multiline diagnostics
					always_show = false,
				},
			},
		})
		vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
	end,
}
