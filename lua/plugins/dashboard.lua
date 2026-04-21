-- lua/plugins/dashboard.lua
return {
  {
    "goolord/alpha-nvim",
    lazy = false,
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "                  ,,,,                         ",
        "             ,;) .';;;;',                      ",
        " ;;,,_,-.-.,;;'_,|I\\;;;/),,_                  ",
        "  `';;/:|:);{ ;;;|| \\;/ /;;;\\_                ",
        "      L;/-';/ \\;;\\',/;\\/;;;.') \\              ",
        "      .:`''` - \\;;'.__/;;;/  . _'-._          ",
        "    .'/   \\     \\;;;;;;/.'_7:.  '). \\_        ",
        "  .''/     | '._ );}{;//.'    '-:  '.,L       ",
        ".'. /       \\  ( |;;;/_/         \\._./;\\   _, ",
        " . /        |\\ ( /;;/_/             ';;;\\,;;_, ",
        ". /         )__(/;;/_/                (;;''''' ",
        " /        _;:':;;;;:';-._             );       ",
        "/        /   \\  `'`   --.'-._         \\/      ",
        "       .'     '.  ,'         '-,               ",
        "      /    /   r--,..__       '.\\              ",
        "    .'    '  .'        '--._     ]             ",
        "    (     :.(;>        _ .' '- ;/              ",
        "    |      /:;(    ,_.';(   __.'               ",
        "     '- -'\"|;:/    (;;;;-'--'                  ",
        "           |;/      ;;(                        ",
        "           ''      /;;|                        ",
        "                   \\_/                        ",
      }
      dashboard.opts.opts = {
	noautocmd = true,
      }
      dashboard.section.buttons.val = {}
      dashboard.section.footer.val = ""

      alpha.setup(dashboard.opts)
    end,
  }
}
