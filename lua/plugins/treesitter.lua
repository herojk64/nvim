-- lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy= false,
    config = function()
      require("nvim-treesitter").setup {
        ensure_installed = { "lua", "python", "javascript", "typescript" },
        highlight = { enable = true },
        indent = { enable = true },
	install_dir = vim.fn.expand('~/.local/data/site')
      }
      require('nvim-treesitter').install {
	'lua',
	'python',
	'javascript',
	'typescript'
      }
    end,
  }
}

