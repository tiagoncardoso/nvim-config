return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "angularls", "golangci_lint_ls", "jsonls", "jdtls", "quick_lint_js", "tsserver", "volar", "yamlls", "html", "cssls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.angularls.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.java_language_server.setup({})
      lspconfig.quick_lint_js.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.volar.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
