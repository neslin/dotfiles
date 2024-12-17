vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", "<cmd>source %<CR>")
--Indent file
vim.keymap.set("n", "<leader>i", "gg=G")

--Keep search terms in the center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem reveal float toggle<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-s>", vim.cmd.write)

vim.keymap.set("i", "<C-s>", "<Esc><Cmd>write<CR>")
vim.keymap.set("n", "<C-Q>", "<cmd>quit!<cr>")
--vim.keymap.set("n", "<leader>x", ":x<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>ap", "=ap")

--Insert new line above/below cursor
vim.keymap.set("n", "<leader>oo", "o<Esc>k")
vim.keymap.set("n", "<leader>OO", "O<Esc>j")

vim.keymap.set("n", "<C-b>", "<Home>")
vim.keymap.set("n", "<C-e>", "<End>")

vim.keymap.set("i", "<C-b>", "<Home>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<leader>n", vim.cmd.bNext)
vim.keymap.set("n", "<leader>N", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.UndotreeToggle()
    vim.cmd.UndotreeFocus()
end)

vim.keymap.set("n", "<Tab>", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.BufferLineCyclePrev)
vim.keymap.set("n", "<leader>q", vim.cmd.bd)

vim.keymap.set("n", "<leader>ma", vim.cmd.Mason)
vim.keymap.set("n", "<leader>la", vim.cmd.Lazy)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q", "<nop>")

vim.keymap.set("v", "<leader>s", [[:%s/\<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])

vim.keymap.set("n", "<leader>D", ":lua Snacks.dashboard.open()<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})


vim.keymap.set("n", "<M-t>", vim.cmd.ToggleTerm)
vim.keymap.set("t", "<M-t>", vim.cmd.ToggleTerm)

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
