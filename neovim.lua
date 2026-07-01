return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#d0d0c8",
        dark_bg    = "#c4c4bc",   -- statusline, etc.
        darker_bg  = "#bcbcb4",
        lighter_bg = "#dcdcd4",   -- cursorline

        fg         = "#242424",
        dark_fg    = "#3e3d31",   -- secondary text (AA 7.06)
        light_fg   = "#59574d",   -- de-emphasized (AA 4.71)
        bright_fg  = "#242424",
        muted      = "#59574d",   -- comments (olive-grey, AA 4.71)

        -- thegreek palette, all AA >=4.7 on #d0d0c8 (via OKLCH darkening):
        red        = "#a32a26",   -- errors / vars (wine-red)
        orange     = "#953b19",   -- numbers / constants (burnt orange = accent)
        yellow     = "#794e17",   -- class / type (warm gold-brown)
        green      = "#3d6035",   -- strings (forest olive)
        cyan       = "#814363",   -- members / fields (deep teal)
        blue       = "#754e3e",   -- functions / methods (warm brown — de-blued)
        purple     = "#624d85",   -- control keywords (slate-purpur = color6 family)
        brown      = "#754e3e",   -- deprecated / special

        bright_red    = "#a32a26",
        bright_yellow = "#794e17",
        bright_green  = "#3d6035",
        bright_cyan   = "#814363",
        bright_blue   = "#754e3e",
        bright_purple = "#624d85",

        accent               = "#953b19",
        cursor               = "#242424",
        foreground           = "#242424",
        background           = "#d0d0c8",
        selection            = "#c3c1cf",
        selection_foreground = "#242424",
        selection_background = "#c3c1cf",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#dcdcd4" }
        hl.CursorLineNr = { fg = c.orange, bold = true }
        -- clean, solid word-occurrence + selection highlights (no muddy computed bg)
        hl.Visual = { bg = "#c3c1cf" }
        hl.LspReferenceText  = { bg = "#cbcbd6" }
        hl.LspReferenceRead  = { bg = "#cbcbd6" }
        hl.LspReferenceWrite = { bg = "#cbcbd6" }
        hl.IlluminatedWordText  = { bg = "#cbcbd6" }
        hl.IlluminatedWordRead  = { bg = "#cbcbd6" }
        hl.IlluminatedWordWrite = { bg = "#cbcbd6" }
        hl.MatchParen = { bg = "#c3c1cf", bold = true }
        -- brackets/parens/braces: lift from aether's muted tone to the burnt-orange accent
        hl["@punctuation.bracket"] = { fg = "#953b19" }
        hl["@punctuation.special"] = { fg = "#953b19" }
        -- keywords: aether renders these lilac internally -> force to palette.
        -- general keywords -> slate-purpur (color6 identity); exceptions -> wine-red
        local kw = { fg = "#624d85" }
        for _, g in ipairs({
          "Keyword", "Conditional", "Repeat", "Statement", "Include", "StorageClass",
          "@keyword", "@keyword.function", "@keyword.operator", "@keyword.return",
          "@keyword.conditional", "@keyword.repeat", "@keyword.import",
          "@keyword.coroutine", "@conditional", "@repeat", "@include",
        }) do
          hl[g] = kw
        end
        local kw_exc = { fg = "#a32a26" }
        for _, g in ipairs({ "Exception", "@keyword.exception", "@exception" }) do
          hl[g] = kw_exc
        end
        -- ':' command line (noice) uses aether's darker bg_popup -> match the editor/terminal bg
        local cmdbg = "#d0d0c8"
        hl.NoiceCmdline                  = { bg = cmdbg }
        hl.NoiceCmdlinePopup             = { bg = cmdbg }
        hl.NoiceCmdlinePopupBorder       = { fg = "#59574d", bg = cmdbg }
        hl.NoiceCmdlinePopupBorderSearch = { fg = "#59574d", bg = cmdbg }
        hl.NoiceConfirm                  = { bg = cmdbg }
        hl.NoiceConfirmBorder            = { fg = "#59574d", bg = cmdbg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "aether" },
  },
}
