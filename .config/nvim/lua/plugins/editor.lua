return {
	{
		"OXY2DEV/markview.nvim",
    branch = "dev",
		lazy = false,
		config = function()
			local presets = require("markview.presets")

			require("markview").setup({})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "OXY2DEV/markview.nvim" },
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "lua", "javascript", "typescript", "html", "json", "markdown" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},

  {
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			whitespace = {
				remove_blankline_trail = false,
			},
		},
	},

  {
		"mcauley-penney/visual-whitespace.nvim",
		config = true,
		event = "ModeChanged *:[vV\22]", -- optionally, lazy load on entering visual mode
		opts = {
			enabled = true,
			highlight = { link = "Visual", default = false },
			list_chars = {
				space = "·",
				tab = "→ ",
				nbsp = "␣",
			},
			fileformat_chars = {
				unix = "↲",
				mac = "←",
				dos = "↙",
			},
			ignore = {
				filetypes = {},
				buftypes = {},
			},
		},
	},
  {
    'norcalli/nvim-colorizer.lua',
    init = function()
      require('colorizer').setup()
    end
  }
}
