return {
	{
		"stevearc/aerial.nvim",
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("aerial").setup({
				on_attach = function(bufnr)
					vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Prev symbol" })
					vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Next symbol" })
				end,
			})
			vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>", { silent = true, desc = "Toggle Aerial" })
		end,
	},
}
