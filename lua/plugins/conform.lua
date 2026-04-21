return {
	{
		"stevearc/conform.nvim",
		lazy = false,
		config = function()
			require("conform").setup()
		end,
	},
}
