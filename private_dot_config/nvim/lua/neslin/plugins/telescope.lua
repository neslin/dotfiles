return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        lazy = false,
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers" },
            
        },
    }
}
