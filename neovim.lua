return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#d0d0c8", -- Default background
                base01 = "#494a42", -- Lighter background (status bars)
                base02 = "#d0d0c8", -- Selection background
                base03 = "#494a42", -- Comments, invisibles
                base04 = "#383835", -- Dark foreground
                base05 = "#242424", -- Default foreground
                base06 = "#242424", -- Light foreground
                base07 = "#383835", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#db0030", -- Variables, errors, red
                base09 = "#ef597a", -- Integers, constants, orange
                base0A = "#51573b", -- Classes, types, yellow
                base0B = "#2e3125", -- Strings, green
                base0C = "#363a34", -- Support, regex, cyan
                base0D = "#f05a0f", -- Functions, keywords, blue
                base0E = "#43432b", -- Keywords, storage, magenta
                base0F = "#a2a87c", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
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
