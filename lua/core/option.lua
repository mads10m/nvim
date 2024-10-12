-- Fat cursor
vim.opt.guicursor = ""

vim.opt.nu = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir/"
vim.opt.undofile = true

-- split below or to the right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Better auto complete in command mode
vim.opt.wildmode = "longest,list,full"

-- Auto spell check in git commits
vim.api.nvim_create_autocmd({ "BufRead" }, {
  desc = "Auto spell check on git commits",
  pattern = "COMMIT_EDITMSG",
  command = "setlocal spell spelllang=en"
})
