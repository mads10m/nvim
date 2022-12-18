vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy and paste to clipboard
vim.keymap.set("v", "<leader>c", '"+y')
vim.keymap.set("n", "<leader>v", '"+p')
--vim.keymap.set("i", "<leader>v", "<C-r>+")
vim.keymap.set("v", "<leader>x", '"+d')

-- Quick save
vim.keymap.set("n", "<Leader>s", ':update<CR>')
-- vim.keymap.set("i", "<Leader>s", '<Esc>:update<CR>i')
vim.keymap.set("v", "<Leader>s", '<Esc>:w<CR>')


-- Spell check
vim.keymap.set("n", "<F6><F6>", function()
    vim.opt.spell = not(vim.opt.spell:get())
end)
vim.keymap.set("n", "<F6>e", function()
    vim.opt.spell = true
    vim.opt.spelllang = "en"
end)
vim.keymap.set("n", "<F6>d", function()
    vim.opt.spell = true
    vim.opt.spelllang = "da"
end)

