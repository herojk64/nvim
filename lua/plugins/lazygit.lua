return {
	{
		"kdheepak/lazygit.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { silent = true, desc = "LazyGit" })
		end,
	},
}
