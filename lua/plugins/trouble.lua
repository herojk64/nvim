return {
	{
		"folke/trouble.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup({
				modes = {
					diagnostics = {
						auto_open = false,
						auto_close = true,
					},
				},
			})

			vim.keymap.set(
				"n",
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<CR>",
				{ silent = true, desc = "Diagnostics" }
			)
			vim.keymap.set(
				"n",
				"<leader>xb",
				"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
				{ silent = true, desc = "Buffer diagnostics" }
			)
			vim.keymap.set("n", "<leader>xs", "<cmd>Trouble symbols toggle<CR>", { silent = true, desc = "Symbols" })
			vim.keymap.set(
				"n",
				"<leader>xl",
				"<cmd>Trouble loclist toggle<CR>",
				{ silent = true, desc = "Location list" }
			)
			vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<CR>", { silent = true, desc = "Quickfix" })
		end,
	},
}
