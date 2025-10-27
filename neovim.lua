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
                base01 = "#63452c", -- Lighter background (status bars)
                base02 = "#2ec27e", -- Selection background
                base03 = "#63452c", -- Comments, invisibles
                base04 = "#576ddb", -- Dark foreground
                base05 = "#242424", -- Default foreground
                base06 = "#2a9292", -- Light foreground
                base07 = "#576ddb", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#db0030", -- Variables, errors, red
                base09 = "#aa573c", -- Integers, constants, orange
                base0A = "#51573b", -- Classes, types, yellow
                base0B = "#383835", -- Strings, green
                base0C = "#955ae7", -- Support, regex, cyan
                base0D = "#f05a0f", -- Functions, keywords, blue
                base0E = "#bf40bf", -- Keywords, storage, magenta
                base0F = "#ffa348", -- Deprecated, brown/yellow
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
