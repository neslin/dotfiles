vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
--Indent file
vim.keymap.set("n", "<leader>i", "gg=G")

--Keep search terms in the center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>e", vim.cmd.Neotree)
vim.keymap.set("n", "<leader>E", "<Cmd>Neotree filesystem reveal toggle<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-s>", vim.cmd.write)

vim.keymap.set("i", "<C-s>", "<Esc><Cmd>write<CR>")
vim.keymap.set("n", "<C-Q>", "<cmd>quit!<cr>")
vim.keymap.set("n", "<leader>x", ":x<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>ap", "=ap")

--Insert new line above/below cursor
vim.keymap.set("n", "oo", "o<Esc>k")
vim.keymap.set("n", "OO", "O<Esc>j")

vim.keymap.set("n", "<C-b>", "<Home>")
vim.keymap.set("n", "<C-e>", "<End>")

vim.keymap.set("i", "<C-b>", "<Home>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Up>")
vim.keymap.set("i", "<C-k>", "<Down>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<leader>n", vim.cmd.bNext)
vim.keymap.set("n", "<leader>N", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<Tab>", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>q", vim.cmd.bd)

vim.keymap.set("n", "<leader>ma", vim.cmd.Mason)
vim.keymap.set("n", "<leader>la", vim.cmd.Lazy)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q", "<nop>")

vim.keymap.set("n", "<leader>xx", vim.cmd.TroubleToggle)
vim.keymap.set("n", "<leader>xw", "<Cmd>TroubleToggle workspace_diagnostics<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
