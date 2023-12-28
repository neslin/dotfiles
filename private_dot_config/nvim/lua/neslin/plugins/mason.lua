return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"",
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
