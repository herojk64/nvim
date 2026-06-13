return {
	{
		"folke/which-key.nvim",
		lazy = false,
		config = function()
			require("which-key").setup({
				preset = "modern",
				delay = 300,
			})

			require("which-key").add({
				{ "<leader>f", group = "Find" },
				{ "<leader>g", group = "Git" },
				{ "<leader>b", group = "Buffer" },
				{ "<leader>s", group = "Split" },
				{ "<leader>a", group = "Aerial" },
			})
		end,
	},
}
