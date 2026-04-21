-- lua/plugins/lsp.lua
local servers = require('config.lsp_servers')

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = servers,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.lsp.config('*',{
	root_markets = { '.git' }
      })

      vim.lsp.config('lua_ls',{
	      settings = {
		      Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		      }
	      }
      })

      vim.lsp.config('pyright',{
	settings = {
		python = {
			analysis = {
				autoImportCompletions = true,
			}
		}
	}
      })

      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
      end

	vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(e)
		  local opts = { buffer = e.buf }
		  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
		  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
		  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		  vim.keymap.set('n', 'gl', vim.diagnostic.open_float, opts)
		  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
		  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
		end
	      })
    end,
  },
}
