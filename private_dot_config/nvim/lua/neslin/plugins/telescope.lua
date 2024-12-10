return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        local builtin = require('telescope.builtin')
        local keymap = vim.keymap

        telescope.setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next,     -- move to next result
                        ["<leader>fq"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            }
        })

        keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end,
}
