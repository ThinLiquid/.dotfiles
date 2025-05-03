return {
	{
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{ "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
		},
	},

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		config = function()
      vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_browser = '/usr/bin/google-chrome-stable'
      vim.g.mkdp_preview_options = {
        disable_filename = 1,
      }
      vim.g.mkdp_theme = 'light'
		end,
		ft = { "markdown" },
    keys = {
			{ "<leader>,", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle the markdown browser preview" },
		},
	},
}
