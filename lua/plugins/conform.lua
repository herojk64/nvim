return {
	{
		"stevearc/conform.nvim",
		lazy = false,
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					python = { "black", "isort" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					css = { "prettier" },
					html = { "prettier" },
					json = { "prettier" },
					lua = { "stylua" },
					php = { "phpactor" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
}
