--? NOTE: 💾 Simple session management for Neovim
return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	keys = { "<leader>oo" },
	config = function()
		require("persistence").setup()
		vim.keymap.set(
			"n",
			"<leader>oo",
			require("persistence").load,
			{ desc = "Load the session for the current directory" }
		)
		vim.keymap.set("n", "<leader>os", require("persistence").select, { desc = "Select a session to load" })
	end,
}
