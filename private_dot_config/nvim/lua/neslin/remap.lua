vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.write)
vim.keymap.set("n", "<C-q>", vim.cmd.quit)
vim.keymap.set("n", "<leader>x", ":x<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>ap", "=ap")

vim.keymap.set("i", "<C-b>", "<Home>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Up>")
vim.keymap.set("i", "<C-k>", "<Down>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<leader>n", vim.cmd.bNext)
vim.keymap.set("n", "<leader>N", vim.cmd.bprevious)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
