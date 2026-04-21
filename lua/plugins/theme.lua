return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,        -- glassy/transparent background
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,
        theme = {
          variant = "default",     -- default | light
          highlights = {},
        },
      })
      vim.cmd("colorscheme cyberdream")
    end,
  }
}
