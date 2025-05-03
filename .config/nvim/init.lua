vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.o.cursorline = true
vim.o.cursorcolumn = true

vim.api.nvim_set_hl(0, "VisualNonText", { fg = "#5D5F71", bg = "#24282d"})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})


vim.diagnostic.config({ virtual_text = true })

require("config.lazy")

vim.cmd("colorscheme everforest")
