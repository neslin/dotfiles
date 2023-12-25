return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "pyright",
            },
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
}
