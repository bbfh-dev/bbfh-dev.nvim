require("config.options")
require("config.lazy")
require("config.keymap")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

-- https://github.com/rockerBOO/awesome-neovim?tab=readme-ov-file#split-and-window
