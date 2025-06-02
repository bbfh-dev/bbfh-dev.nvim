vim.keymap.set("n", "<leader>ll", "<CMD>!go test -v ./...<CR>")
vim.keymap.set("n", "<leader>lr", "<CMD>!make run --always-make<CR>")
vim.keymap.set("n", "<leader>lc", "<CMD>!make coverage --always-make<CR>")

vim.keymap.set("n", "<leader>lj", "<CMD>GoTagAdd json<CR>")
vim.keymap.set("n", "<leader>le", "<CMD>GoIfErr<CR>")
