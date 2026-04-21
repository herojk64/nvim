return {
  {
    "folke/flash.nvim",
    lazy = false,
    config = function()
      require("flash").setup()
    end,
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end },
    },
  }
}
