return {
	{
		"akinsho/toggleterm.nvim",
		lazy = false,
		config = function()
			require("toggleterm").setup({
				size = 20,
				open_mapping = [[<C-\>]],
				direction = "float",
				float_opts = {
					border = "curved",
				},
				shell = "fish",
			})

			local Terminal = require("toggleterm.terminal").Terminal

			local claude = Terminal:new({
				cmd = "claude",
				shell = "fish",
				direction = "vertical",
				size = 120,
				hidden = true,
			})

			vim.keymap.set("n", "<leader>ai", function()
				claude:toggle()
			end, { silent = true, desc = "Claude AI" })
		end,
	},
}
