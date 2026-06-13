return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "▎" },
					change = { text = "▎" },
					delete = { text = "" },
					topdelete = { text = "" },
					changedelete = { text = "▎" },
				},
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns
					local map = vim.keymap.set

					map("n", "]h", gs.next_hunk, { buffer = bufnr, desc = "Next hunk" })
					map("n", "[h", gs.prev_hunk, { buffer = bufnr, desc = "Prev hunk" })
					map("n", "<leader>gs", gs.stage_hunk, { buffer = bufnr, desc = "Stage hunk" })
					map("n", "<leader>gr", gs.reset_hunk, { buffer = bufnr, desc = "Reset hunk" })
					map("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr, desc = "Preview hunk" })
					map("n", "<leader>gb", gs.blame_line, { buffer = bufnr, desc = "Blame line" })
				end,
			})
		end,
	},
}
