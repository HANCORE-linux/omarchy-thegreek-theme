return {
	{
		"bjarneo/aether.nvim",
		name = "thegreek-special09",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Base shades
				base00 = "#d0d0c8", -- Background
				base01 = "#d0d0c8", -- Panel / lighter background
				base02 = "#a2a87c", -- Selection background
				base03 = "#43432b", -- Comments / invisibles
				base04 = "#363a34", -- Operators / punctuation / support
				base05 = "#242424", -- Foreground / main text
				base06 = "#576ddb", -- Bright text / accents
				base07 = "#576ddb", -- Highlight background

				-- Accents
				base08 = "#db0030", -- Variables / errors
				base09 = "#3B7D74", -- Numbers / constants
				base0A = "#B95C31", -- Classes / types / keywords
				base0B = "#B95C31", -- Strings / functions
				base0C = "#7f4eb2", -- Support / regex / muted purple
				base0D = "#B95C31", -- Functions / keywords
				base0E = "#d2691e", -- Highlights / deprecated
				base0F = "#2e4c3a", -- Dark green accent / extra highlight
			},
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
