require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua" }
})

local lspconfig = require("lspconfig")
lspconfig.sumneko_lua.setup({
  -- Add any additional configuration options here if needed
})

