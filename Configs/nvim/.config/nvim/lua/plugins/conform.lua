return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		-- Format on save
		format_on_save = {
			timeout_ms = 500, -- Default timeout
			lsp_fallback = true, -- Fallback to LSP formatting if no formatter is available
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
