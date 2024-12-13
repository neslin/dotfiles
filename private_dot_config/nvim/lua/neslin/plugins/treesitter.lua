return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    even = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            --ensure_installed = { "lua", "vim", "vimdoc", "javascript", "html", "python" },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            ignore_install = { "help" },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<BS>",
                },
            },
        })
    end,
}
