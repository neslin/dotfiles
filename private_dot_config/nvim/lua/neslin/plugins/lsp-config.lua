return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "neslin.lspconfig"
            require "neslin.plugins.lsp-config"
        end,
    },
}
