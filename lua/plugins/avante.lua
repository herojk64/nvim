-- lua/plugins/avante.lua
return {
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "yetone/avante.nvim",
    lazy = false,
    build = "make",
    dependencies = {
      "zbirenbaum/copilot.lua",  -- ensures copilot loads first
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("avante").setup({
        provider = "copilot",
	file_selector = {
		provider = "telescope"
	}
      })
    end,
  },
}
