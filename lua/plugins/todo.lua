return {
	{
		"folke/todo-comments.nvim",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup()

			vim.keymap.set("n", "]t", function()
				require("todo-comments").jump_next()
			end, { silent = true, desc = "Next todo" })
			vim.keymap.set("n", "[t", function()
				require("todo-comments").jump_prev()
			end, { silent = true, desc = "Prev todo" })
			vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { silent = true, desc = "Find todos" })
		end,
	},
}
