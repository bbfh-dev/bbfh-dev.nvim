-- Thanks to https://github.com/rockerBOO/awesome-neovim for the list of plugins

require("config.options")
require("config.lazy")
require("config.keymap")
require("config.local")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.js", "*.less", "*.html" },
	callback = function()
		if vim.loop.cwd() == "/mnt/repo/git/smithed-dev/website" then
			vim.cmd("!./generate.all.sh; ./build.sh")
		end
	end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- https://github.com/hedyhli/outline.nvim/issues/86#issuecomment-2350904173
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if vim.bo.filetype == "Outline" and vim.fn.winnr("$") == 1 then
			vim.cmd("q")
		end
	end,
})
