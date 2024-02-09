return {
  "williamboman/mason.nvim",

  opts = {
    ensure_installed = { -- the following packages will be auto installed
      "pyright",
      "lua-language-server",
      "json-lsp",
      "java-language-server",
      "pylint",
      "rust-analyzer",
      "shfmt",
    },

    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
