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
      vim.g.mkdp_echo_preview_urbunl = 1
			vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_browser = '/usr/bin/thorium-browser'
      vim.g.mkdp_preview_options = {
        disable_filename = 1,
      }
      vim.g.mkdp_theme = 'light'
      vim.g.mkdp_markdown_css = vim.fn.expand('~/.config/nvim/md.css')
		end,
		ft = { "markdown" },
    keys = {
			{ "<leader>,", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle the markdown browser preview" },
		},
	},
}
