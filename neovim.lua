return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,

      colors = {
        -- Background colors
        bg           = "#d0d0c8",   -- Main background (was base00/base01)
        bg_dark      = "#d0d0c8",   -- Sidebars, statusline
        bg_highlight = "#a2a87c",   -- Selection, cursorline (was base02)

        -- Foreground colors
        fg           = "#242424",   -- Main text (was base05)
        fg_dark      = "#363a34",   -- Secondary/inactive text (was base04)
        comment      = "#7b7b5d",   -- Comments (was base03)

        -- Accent colors
        red          = "#db0030",   -- Errors, variables (was base08)
        orange       = "#ff4800",   -- (was base0E)
        yellow       = "#616a55",   -- Types, classes, keywords (was base0A / base0B / base0D)
        green        = "#2e3125",   -- Strings, success (was base09)
        cyan         = "#480607",   -- Regex, support (was base0C)
        blue         = "#363a34",   -- Functions, keywords, accents (was base06 / base07)
        purple       = "#6a551b",   -- Storage, identifiers
        magenta      = "#7c773f",

      },
        on_highlights = function(hl, c)
    -- Your existing lines
    hl.CursorLine = { bg = "#ddded4" } 
    hl.CursorLineNr = { fg = c.orange, bold = true }
    hl["@markup.raw.markdown_inline"] = { bg = "NONE" }
    hl["@markup.raw.block.markdown"] = { bg = "NONE" }
	hl["@markup.quote"] = { bg = "NONE" }
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
    opts = {
      colorscheme = "aether",
    },
  },
}