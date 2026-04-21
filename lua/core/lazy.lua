-- 1️⃣ BOOTSTRAP lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2️⃣ SETUP PLUGINS USING SPEC
require("lazy").setup({
  spec = {
    { import = "plugins" },  -- lazy will load all modules under lua/plugins/
  },
  defaults = {
    lazy = true,      -- lazy-load by default
    version = false,  -- always use latest git version
  },
  install = { colorscheme = { "tokyonight", "catppuccin" } },
})

