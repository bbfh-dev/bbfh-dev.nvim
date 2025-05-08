-- File management
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>W", "<cmd>noautocmd w<CR>")
vim.keymap.set("n", "<leader>q", function()
	vim.cmd("q")
end)
vim.keymap.set("n", "<leader>Q", function()
	vim.cmd("qa")
end)

-- Line wrap
vim.keymap.set({ "n" }, "<leader>[", function()
	vim.opt.wrap = false
end)
vim.keymap.set({ "n" }, "<leader>]", function()
	vim.opt.wrap = true
end)

-- System clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set({ "n" }, "<C-p>", [[o<ESC>"+p]])

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Split
vim.keymap.set("n", "<leader>=", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>+", vim.cmd.split)

-- Remove search highlight on Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

return {}
