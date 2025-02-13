return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	opts = {
		highlight = {
			enable = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<Leader>s", -- Start selection
				node_incremental = "<Tab>", -- Expand to next node
				scope_incremental = "<S-Tab>", -- Expand to next scope
				node_decremental = "<BS>", -- Shrink to previous node
			},
		},
		indent = {
			enable = true,
		},
		ensure_installed = { "c", "lua", "rust", "python", "markdown", "markdown_inline" },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
