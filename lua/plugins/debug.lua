return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{
			"igorlfs/nvim-dap-view",
			opts = {},
		},
		-- Installs the debug adapters for you
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
		-- Add your own debuggers here
		"leoluz/nvim-dap-go",
	},
	keys = {
		{
			"<F5>",
			function()
				require("dap").continue()
			end,
			desc = "Debug: Start/Continue",
		},
		{
			"<F8>",
			function()
				require("dap").step_into()
			end,
			desc = "Debug: Step Into",
		},
		{
			"<F7>",
			function()
				require("dap").step_over()
			end,
			desc = "Debug: Step Over",
		},
		{
			"<F6>",
			function()
				require("dap").step_out()
			end,
			desc = "Debug: Step Out",
		},
		{
			"<F29>",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Debug: Toggle Breakpoint",
		},
		{
			"<F30>",
			function()
				require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end,
			desc = "Debug: Set Breakpoint",
		},
		{
			"<F9>",
			vim.cmd.DapViewOpen,
			desc = "Debug: Open UI",
		},
		{
			"<leader>ldt",
			function()
				require("dap-go").debug_test()
			end,
			desc = "Debug: Current go test",
		},
		{
			"<leader>ldT",
			function()
				require("dap-go").debug_last_test()
			end,
			desc = "Debug: Last go test",
		},
	},
	config = function()
		local dap = require("dap")

		require("mason-nvim-dap").setup({
			-- Makes a best effort to setup the various debuggers with
			-- reasonable debug configurations
			automatic_installation = true,

			-- You can provide additional configuration to the handlers,
			-- see mason-nvim-dap README for more information
			handlers = {},

			-- You'll need to check that you have the required things installed
			-- online, please don't ask me how to install them :)
			ensure_installed = {
				-- Update this to ensure that you have the debuggers for the langs you want
				"delve",
			},
		})

		-- Install golang specific config
		require("dap-go").setup({
			delve = {
				-- On Windows delve must be run attached or it crashes.
				-- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
				detached = vim.fn.has("win32") == 0,
			},
		})
	end,
}
