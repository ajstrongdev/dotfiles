return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
	ensure_installed = {"ts_ls", "javascript", "gopls"}
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
