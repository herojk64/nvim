return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			local ts = require("nvim-treesitter")
			local parsers = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"tsx",
				"svelte",
			}

			ts.install(parsers)

			vim.api.nvim_create_autocmd("FileType", {
				pattern = parsers,
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
}
