return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			javascript = { "prettier", stop_after_first = true },
			html = { "prettier", stop_after_first = true },
			json = { "prettier", stop_after_first = true },
			svg = { "prettier", stop_after_first = true },
			less = { "prettier", stop_after_first = true },
			css = { "prettier", stop_after_first = true },
			sh = { "beautysh", stop_after_first = true },
			go = { "crlfmt", stop_after_first = true },
		},
		formatters = {
			prettier = {
				args = function(self, ctx)
					local check_cwd = require("conform.util").root_file({
						".prettierrc",
						".prettierrc.json",
						".prettierrc.yml",
						".prettierrc.yaml",
						".prettierrc.json5",
						".prettierrc.js",
						".prettierrc.cjs",
						".prettierrc.mjs",
						".prettierrc.toml",
						"prettier.config.js",
						"prettier.config.cjs",
						"prettier.config.mjs",
						"package.json",
					})

					local has_cwd = check_cwd(self, ctx) ~= nil

					if not has_cwd then
						return {
							"--stdin-filepath",
							"$FILENAME",
							"--config",
							"/home/tux/.config/prettier/prettier.json",
						}
					end

					return { "--stdin-filepath", "$FILENAME" }
				end,
			},
		},
	},
}
